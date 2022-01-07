; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/boot/extr_piggyback.c_get_hdrs_offset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/boot/extr_piggyback.c_get_hdrs_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@AOUT_TEXT_OFFSET = common dso_local global i32 0, align 4
@LOOKBACK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Couldn't find headers signature in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @get_hdrs_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hdrs_offset(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @BUFSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SEEK_SET, align 4
  %17 = call i64 @lseek(i32 %15, i32 0, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @BUFSIZE, align 4
  %24 = call i32 @read(i32 %22, i8* %14, i32 %23)
  %25 = load i32, i32* @BUFSIZE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @die(i8* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = getelementptr inbounds i8, i8* %14, i64 40
  %32 = load i8, i8* %31, align 8
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 72
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, i8* %14, i64 41
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 100
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, i8* %14, i64 42
  %42 = load i8, i8* %41, align 2
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 114
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = getelementptr inbounds i8, i8* %14, i64 43
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 83
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 40, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %131

51:                                               ; preds = %45, %40, %35, %30
  %52 = load i32, i32* @AOUT_TEXT_OFFSET, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %14, i64 %53
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = call i32 @ld2(i8* %55)
  %57 = shl i32 %56, 2
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @LOOKBACK, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @AOUT_TEXT_OFFSET, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @SEEK_SET, align 4
  %67 = call i64 @lseek(i32 %64, i32 %65, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %51
  %70 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %51
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @BUFSIZE, align 4
  %74 = call i32 @read(i32 %72, i8* %14, i32 %73)
  %75 = load i32, i32* @BUFSIZE, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @die(i8* %78)
  br label %80

80:                                               ; preds = %77, %71
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %122, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @LOOKBACK, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %125

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 0
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %14, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 72
  br i1 %92, label %93, label %121

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %14, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 100
  br i1 %100, label %101, label %121

101:                                              ; preds = %93
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %14, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 114
  br i1 %108, label %109, label %121

109:                                              ; preds = %101
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %14, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 83
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %118, %119
  store i32 %120, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %131

121:                                              ; preds = %109, %101, %93, %85
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 4
  store i32 %124, i32* %9, align 4
  br label %81

125:                                              ; preds = %81
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* @stderr, align 4
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 @fprintf(i32 %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %128)
  %130 = call i32 @exit(i32 1) #4
  unreachable

131:                                              ; preds = %117, %50
  %132 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @lseek(i32, i32, i32) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @ld2(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
