; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/lib/extr_csum_partial_copy.c_do_csum_c.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/lib/extr_csum_partial_copy.c_do_csum_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32)* @do_csum_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_csum_c(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %169

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = and i64 1, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 8
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %4, align 8
  br label %34

34:                                               ; preds = %24, %17
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %145

39:                                               ; preds = %34
  %40 = load i8*, i8** %4, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = and i64 2, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = bitcast i8* %45 to i16*
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i64
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 2
  store i32 %54, i32* %5, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  store i8* %56, i8** %4, align 8
  br label %57

57:                                               ; preds = %44, %39
  %58 = load i32, i32* %8, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %131

62:                                               ; preds = %57
  %63 = load i8*, i8** %4, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = and i64 4, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load i8*, i8** %4, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %9, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %76, 4
  store i32 %77, i32* %5, align 4
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  store i8* %79, i8** %4, align 8
  br label %80

80:                                               ; preds = %67, %62
  %81 = load i32, i32* %8, align 4
  %82 = ashr i32 %81, 1
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %117

85:                                               ; preds = %80
  store i64 0, i64* %10, align 8
  br label %86

86:                                               ; preds = %105, %85
  %87 = load i8*, i8** %4, align 8
  %88 = bitcast i8* %87 to i64*
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %11, align 8
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %8, align 4
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 8
  store i8* %93, i8** %4, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %9, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %9, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %9, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp ugt i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %10, align 8
  br label %105

105:                                              ; preds = %86
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %86, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %9, align 8
  %112 = load i64, i64* %9, align 8
  %113 = and i64 %112, 4294967295
  %114 = load i64, i64* %9, align 8
  %115 = lshr i64 %114, 32
  %116 = add i64 %113, %115
  store i64 %116, i64* %9, align 8
  br label %117

117:                                              ; preds = %108, %80
  %118 = load i32, i32* %5, align 4
  %119 = and i32 %118, 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load i8*, i8** %4, align 8
  %123 = bitcast i8* %122 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %9, align 8
  %127 = add i64 %126, %125
  store i64 %127, i64* %9, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 4
  store i8* %129, i8** %4, align 8
  br label %130

130:                                              ; preds = %121, %117
  br label %131

131:                                              ; preds = %130, %57
  %132 = load i32, i32* %5, align 4
  %133 = and i32 %132, 2
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = load i8*, i8** %4, align 8
  %137 = bitcast i8* %136 to i16*
  %138 = load i16, i16* %137, align 2
  %139 = zext i16 %138 to i64
  %140 = load i64, i64* %9, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %9, align 8
  %142 = load i8*, i8** %4, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  store i8* %143, i8** %4, align 8
  br label %144

144:                                              ; preds = %135, %131
  br label %145

145:                                              ; preds = %144, %34
  %146 = load i32, i32* %5, align 4
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i8*, i8** %4, align 8
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i64
  %153 = load i64, i64* %9, align 8
  %154 = add i64 %153, %152
  store i64 %154, i64* %9, align 8
  br label %155

155:                                              ; preds = %149, %145
  %156 = load i64, i64* %9, align 8
  %157 = call i64 @from64to16(i64 %156)
  store i64 %157, i64* %9, align 8
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load i64, i64* %9, align 8
  %162 = lshr i64 %161, 8
  %163 = and i64 %162, 255
  %164 = load i64, i64* %9, align 8
  %165 = and i64 %164, 255
  %166 = shl i64 %165, 8
  %167 = or i64 %163, %166
  store i64 %167, i64* %9, align 8
  br label %168

168:                                              ; preds = %160, %155
  br label %169

169:                                              ; preds = %168, %16
  %170 = load i64, i64* %9, align 8
  ret i64 %170
}

declare dso_local i64 @from64to16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
