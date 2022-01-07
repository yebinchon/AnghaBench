; ModuleID = '/home/carl/AnghaBench/i3/i3-input/extr_main.c_finish_input.c'
source_filename = "/home/carl/AnghaBench/i3/i3-input/extr_main.c_finish_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@glyphs_utf8 = common dso_local global i32 0, align 4
@input_position = common dso_local global i32 0, align 4
@format = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"occurrences = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"command = %s\0A\00", align 1
@sockfd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @finish_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_input() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = load i32, i32* @glyphs_utf8, align 4
  %9 = load i32, i32* @input_position, align 4
  %10 = call i64 @concat_strings(i32 %8, i32 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %1, align 8
  %12 = load i8*, i8** @format, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %40, %0
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = load i8*, i8** @format, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 37
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = load i8*, i8** @format, align 8
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 115
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %27, %19
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %14

43:                                               ; preds = %14
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i8*, i8** %1, align 8
  %47 = call i32 @strlen(i8* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i8*, i8** @format, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = load i32, i32* %4, align 4
  %51 = mul nsw i32 2, %50
  %52 = sub nsw i32 %49, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %52, %55
  %57 = add nsw i32 %56, 1
  %58 = call i8* @scalloc(i32 %57, i32 1)
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  store i8* %59, i8** %7, align 8
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %106, %43
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %109

64:                                               ; preds = %60
  %65 = load i8*, i8** @format, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 37
  br i1 %71, label %86, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* %3, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** @format, align 8
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 115
  br i1 %85, label %86, label %94

86:                                               ; preds = %77, %72, %64
  %87 = load i8*, i8** @format, align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %7, align 8
  store i8 %91, i8* %92, align 1
  br label %105

94:                                               ; preds = %77
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %1, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @strncat(i8* %95, i8* %96, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = load i8*, i8** %7, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %7, align 8
  %103 = load i32, i32* %2, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %94, %86
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %2, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %2, align 4
  br label %60

109:                                              ; preds = %60
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* @sockfd, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @strlen(i8* %113)
  %115 = load i8*, i8** %6, align 8
  %116 = bitcast i8* %115 to i32*
  %117 = call i32 @ipc_send_message(i32 %112, i32 %114, i32 0, i32* %116)
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @free(i8* %118)
  %120 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @concat_strings(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @scalloc(i32, i32) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i32 @ipc_send_message(i32, i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
