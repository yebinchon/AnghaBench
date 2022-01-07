; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_utils.c_prepare_watchcat_str.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_utils.c_prepare_watchcat_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_NAME_SIZE = common dso_local global i64 0, align 8
@prep_buf = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"error at %.30s\0A\00", align 1
@prep_buf_res = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @prepare_watchcat_str(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = load i64, i64* @MAX_NAME_SIZE, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %152

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 32, i32 43
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %6, align 1
  %24 = load i8*, i8** @prep_buf, align 8
  store i8* %24, i8** %7, align 8
  store i32 1, i32* %8, align 4
  store i8* null, i8** %9, align 8
  br label %25

25:                                               ; preds = %132, %95, %18
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %140

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = call i32 @exit(i32 2) #3
  unreachable

38:                                               ; preds = %29
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8* %43, i8** %9, align 8
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %50

47:                                               ; preds = %38
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @get_notword(i8* %48)
  br label %50

50:                                               ; preds = %47, %46
  %51 = phi i32 [ 0, %46 ], [ %49, %47 ]
  store i32 %51, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %140

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %66, %55
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 31
  br label %64

64:                                               ; preds = %59, %56
  %65 = phi i1 [ false, %56 ], [ %63, %59 ]
  br i1 %65, label %66, label %71

66:                                               ; preds = %64
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %10, align 4
  br label %56

71:                                               ; preds = %64
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 31
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  store i32 1, i32* %10, align 4
  br label %77

77:                                               ; preds = %85, %76
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp sge i32 %83, 64
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %77

88:                                               ; preds = %77
  store i32 1, i32* %8, align 4
  br label %92

89:                                               ; preds = %71
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @get_word(i8* %90)
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %89, %88
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  br label %25

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %100, 511
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i1 [ false, %96 ], [ %101, %99 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i8*, i8** %4, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 31
  br i1 %109, label %110, label %123

110:                                              ; preds = %102
  %111 = load i8*, i8** @prep_buf_res, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @my_lc_str(i8* %111, i8* %112, i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = load i8*, i8** @prep_buf_res, align 8
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @memcpy(i8* %115, i8* %116, i32 %117)
  %119 = load i32, i32* %11, align 4
  %120 = load i8*, i8** %7, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %7, align 8
  br label %132

123:                                              ; preds = %102
  %124 = load i8*, i8** %7, align 8
  %125 = load i8*, i8** %4, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @memcpy(i8* %124, i8* %125, i32 %126)
  %128 = load i32, i32* %10, align 4
  %129 = load i8*, i8** %7, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %7, align 8
  br label %132

132:                                              ; preds = %123, %110
  %133 = load i8, i8* %6, align 1
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %7, align 8
  store i8 %133, i8* %134, align 1
  %136 = load i32, i32* %10, align 4
  %137 = load i8*, i8** %4, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %4, align 8
  br label %25

140:                                              ; preds = %54, %25
  %141 = load i8*, i8** %7, align 8
  store i8 0, i8* %141, align 1
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i8*, i8** @prep_buf, align 8
  %146 = call i8* @prepare_str_cp1251(i8* %145)
  br label %149

147:                                              ; preds = %140
  %148 = load i8*, i8** @prep_buf, align 8
  br label %149

149:                                              ; preds = %147, %144
  %150 = phi i8* [ %146, %144 ], [ %148, %147 ]
  store i8* %150, i8** %12, align 8
  %151 = load i8*, i8** %12, align 8
  store i8* %151, i8** %3, align 8
  br label %152

152:                                              ; preds = %149, %17
  %153 = load i8*, i8** %3, align 8
  ret i8* %153
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @get_notword(i8*) #1

declare dso_local i32 @get_word(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @my_lc_str(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @prepare_str_cp1251(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
