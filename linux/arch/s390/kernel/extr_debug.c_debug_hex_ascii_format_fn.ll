; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_debug.c_debug_hex_ascii_format_fn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_debug.c_debug_hex_ascii_format_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.debug_view = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.debug_view*, i8*, i8*)* @debug_hex_ascii_format_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_hex_ascii_format_fn(%struct.TYPE_3__* %0, %struct.debug_view* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.debug_view*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.debug_view* %1, %struct.debug_view** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %34, %4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = call i64 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %12

37:                                               ; preds = %12
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = call i64 (i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %89, %37
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %47
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %11, align 1
  %59 = load i8, i8* %11, align 1
  %60 = call i64 @isascii(i8 zeroext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %53
  %63 = load i8, i8* %11, align 1
  %64 = call i64 @isprint(i8 zeroext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %11, align 1
  %72 = zext i8 %71 to i32
  %73 = call i64 (i8*, i8*, ...) @sprintf(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %10, align 4
  br label %88

78:                                               ; preds = %62, %53
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = call i64 (i8*, i8*, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %78, %66
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %47

92:                                               ; preds = %47
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = call i64 (i8*, i8*, ...) @sprintf(i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  ret i32 %102
}

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @isascii(i8 zeroext) #1

declare dso_local i64 @isprint(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
