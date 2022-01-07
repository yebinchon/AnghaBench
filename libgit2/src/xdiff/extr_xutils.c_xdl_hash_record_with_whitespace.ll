; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xutils.c_xdl_hash_record_with_whitespace.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xutils.c_xdl_hash_record_with_whitespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XDF_WHITESPACE_FLAGS = common dso_local global i64 0, align 8
@XDF_IGNORE_CR_AT_EOL = common dso_local global i64 0, align 8
@XDF_IGNORE_WHITESPACE = common dso_local global i64 0, align 8
@XDF_IGNORE_WHITESPACE_CHANGE = common dso_local global i64 0, align 8
@XDF_IGNORE_WHITESPACE_AT_EOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i8*, i64)* @xdl_hash_record_with_whitespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xdl_hash_record_with_whitespace(i8** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 5381, i64* %7, align 8
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @XDF_WHITESPACE_FLAGS, align 8
  %16 = and i64 %14, %15
  %17 = load i64, i64* @XDF_IGNORE_CR_AT_EOL, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %156, %3
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 10
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i1 [ false, %20 ], [ %28, %24 ]
  br i1 %30, label %31, label %159

31:                                               ; preds = %29
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 13
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %156

51:                                               ; preds = %44, %39, %34
  br label %146

52:                                               ; preds = %31
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @XDL_ISSPACE(i8 signext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %145

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  store i8* %58, i8** %10, align 8
  br label %59

59:                                               ; preds = %78, %57
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8*, i8** %5, align 8
  %63 = icmp ult i8* %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @XDL_ISSPACE(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 10
  br label %76

76:                                               ; preds = %70, %64, %59
  %77 = phi i1 [ false, %64 ], [ false, %59 ], [ %75, %70 ]
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  br label %59

81:                                               ; preds = %76
  %82 = load i8*, i8** %5, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = icmp ule i8* %82, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 10
  br label %92

92:                                               ; preds = %86, %81
  %93 = phi i1 [ true, %81 ], [ %91, %86 ]
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %11, align 4
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @XDF_IGNORE_WHITESPACE, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %144

100:                                              ; preds = %92
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @XDF_IGNORE_WHITESPACE_CHANGE, align 8
  %103 = and i64 %101, %102
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* %7, align 8
  %110 = shl i64 %109, 5
  %111 = load i64, i64* %7, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %7, align 8
  %114 = xor i64 %113, 32
  store i64 %114, i64* %7, align 8
  br label %143

115:                                              ; preds = %105, %100
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @XDF_IGNORE_WHITESPACE_AT_EOL, align 8
  %118 = and i64 %116, %117
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %115
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %142, label %123

123:                                              ; preds = %120
  br label %124

124:                                              ; preds = %129, %123
  %125 = load i8*, i8** %10, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = icmp ne i8* %125, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = load i64, i64* %7, align 8
  %131 = shl i64 %130, 5
  %132 = load i64, i64* %7, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %7, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i64
  %137 = load i64, i64* %7, align 8
  %138 = xor i64 %137, %136
  store i64 %138, i64* %7, align 8
  %139 = load i8*, i8** %10, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %10, align 8
  br label %124

141:                                              ; preds = %124
  br label %142

142:                                              ; preds = %141, %120, %115
  br label %143

143:                                              ; preds = %142, %108
  br label %144

144:                                              ; preds = %143, %99
  br label %156

145:                                              ; preds = %52
  br label %146

146:                                              ; preds = %145, %51
  %147 = load i64, i64* %7, align 8
  %148 = shl i64 %147, 5
  %149 = load i64, i64* %7, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %7, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i64
  %154 = load i64, i64* %7, align 8
  %155 = xor i64 %154, %153
  store i64 %155, i64* %7, align 8
  br label %156

156:                                              ; preds = %146, %144, %50
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %8, align 8
  br label %20

159:                                              ; preds = %29
  %160 = load i8*, i8** %8, align 8
  %161 = load i8*, i8** %5, align 8
  %162 = icmp ult i8* %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  br label %168

166:                                              ; preds = %159
  %167 = load i8*, i8** %8, align 8
  br label %168

168:                                              ; preds = %166, %163
  %169 = phi i8* [ %165, %163 ], [ %167, %166 ]
  %170 = load i8**, i8*** %4, align 8
  store i8* %169, i8** %170, align 8
  %171 = load i64, i64* %7, align 8
  ret i64 %171
}

declare dso_local i64 @XDL_ISSPACE(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
