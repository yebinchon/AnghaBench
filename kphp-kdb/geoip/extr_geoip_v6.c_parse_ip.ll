; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_parse_ip.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_parse_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6 = type { i32* }

@buff = common dso_local global i8* null, align 8
@parse_pos = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_ip() #0 {
  %1 = alloca %struct.ipv6, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = load i8*, i8** @buff, align 8
  %5 = load i64, i64* @parse_pos, align 8
  %6 = getelementptr inbounds i8, i8* %4, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 44
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i64, i64* @parse_pos, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* @parse_pos, align 8
  br label %13

13:                                               ; preds = %10, %0
  br label %14

14:                                               ; preds = %21, %13
  %15 = load i8*, i8** @buff, align 8
  %16 = load i64, i64* @parse_pos, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i64, i64* @parse_pos, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* @parse_pos, align 8
  br label %14

24:                                               ; preds = %14
  %25 = load i8*, i8** @buff, align 8
  %26 = load i64, i64* @parse_pos, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* @parse_pos, align 8
  %28 = getelementptr inbounds i8, i8* %25, i64 %26
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 34
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  store i32 0, i32* %2, align 4
  %34 = getelementptr inbounds %struct.ipv6, %struct.ipv6* %1, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %131, %24
  %38 = load i8*, i8** @buff, align 8
  %39 = load i64, i64* @parse_pos, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 34
  br i1 %43, label %44, label %134

44:                                               ; preds = %37
  %45 = load i8*, i8** @buff, align 8
  %46 = load i64, i64* @parse_pos, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 58
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load i32, i32* %2, align 4
  %53 = icmp sle i32 %52, 6
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = getelementptr inbounds %struct.ipv6, %struct.ipv6* %1, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 0, i32* %61, align 4
  br label %131

62:                                               ; preds = %44
  %63 = load i8*, i8** @buff, align 8
  %64 = load i64, i64* @parse_pos, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* %3, align 1
  %67 = load i8, i8* %3, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 48, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i8, i8* %3, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sle i32 %72, 57
  br i1 %73, label %84, label %74

74:                                               ; preds = %70, %62
  %75 = load i8, i8* %3, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sge i32 %76, 97
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8, i8* %3, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 %80, 102
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i1 [ false, %74 ], [ %81, %78 ]
  br label %84

84:                                               ; preds = %82, %70
  %85 = phi i1 [ true, %70 ], [ %83, %82 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i8, i8* %3, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sle i32 %89, 57
  br i1 %90, label %91, label %112

91:                                               ; preds = %84
  %92 = load i8, i8* %3, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sge i32 %93, 48
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.ipv6, %struct.ipv6* %1, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %101, 16
  %103 = load i8, i8* %3, align 1
  %104 = sext i8 %103 to i32
  %105 = add nsw i32 %102, %104
  %106 = sub nsw i32 %105, 48
  %107 = getelementptr inbounds %struct.ipv6, %struct.ipv6* %1, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %2, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %106, i32* %111, align 4
  br label %130

112:                                              ; preds = %91, %84
  %113 = getelementptr inbounds %struct.ipv6, %struct.ipv6* %1, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 16
  %120 = load i8, i8* %3, align 1
  %121 = sext i8 %120 to i32
  %122 = add nsw i32 %119, %121
  %123 = add nsw i32 %122, 10
  %124 = sub nsw i32 %123, 97
  %125 = getelementptr inbounds %struct.ipv6, %struct.ipv6* %1, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %2, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %124, i32* %129, align 4
  br label %130

130:                                              ; preds = %112, %95
  br label %131

131:                                              ; preds = %130, %51
  %132 = load i64, i64* @parse_pos, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* @parse_pos, align 8
  br label %37

134:                                              ; preds = %37
  %135 = load i8*, i8** @buff, align 8
  %136 = load i64, i64* @parse_pos, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* @parse_pos, align 8
  %138 = getelementptr inbounds i8, i8* %135, i64 %136
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 34
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load i8*, i8** @buff, align 8
  %145 = load i64, i64* @parse_pos, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = icmp ne i8 %147, 0
  br i1 %148, label %149, label %170

149:                                              ; preds = %134
  %150 = load i8*, i8** @buff, align 8
  %151 = load i64, i64* @parse_pos, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 44
  br i1 %155, label %170, label %156

156:                                              ; preds = %149
  %157 = load i8*, i8** @buff, align 8
  %158 = load i64, i64* @parse_pos, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 10
  br i1 %162, label %170, label %163

163:                                              ; preds = %156
  %164 = load i8*, i8** @buff, align 8
  %165 = load i64, i64* @parse_pos, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 13
  br label %170

170:                                              ; preds = %163, %156, %149, %134
  %171 = phi i1 [ true, %156 ], [ true, %149 ], [ true, %134 ], [ %169, %163 ]
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = getelementptr inbounds %struct.ipv6, %struct.ipv6* %1, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  ret i32* %175
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
