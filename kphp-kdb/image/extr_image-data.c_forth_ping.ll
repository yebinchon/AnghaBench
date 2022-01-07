; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_forth_ping.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_forth_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_stack = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"ping: 1st isn't str\00", align 1
@FORTH_FAIL = common dso_local global i8* null, align 8
@MaxTextExtent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ping: filename too long\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ping: PingImage (%s) throws exception\00", align 1
@NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, %struct.forth_stack*)* @forth_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @forth_ping(i8** %0, %struct.forth_stack* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.forth_stack*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.forth_stack* %1, %struct.forth_stack** %5, align 8
  %11 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %12 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %15 = call i32 @pop_str(%struct.forth_stack* %14, i8** %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %20 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i8*, i8** @FORTH_FAIL, align 8
  store i8* %21, i8** %3, align 8
  br label %66

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = load i32, i32* @MaxTextExtent, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %30 = call i8* (%struct.forth_stack*, i8*, ...) @failf(%struct.forth_stack* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %3, align 8
  br label %66

31:                                               ; preds = %22
  %32 = call i32 @GetExceptionInfo(i32* %8)
  %33 = call %struct.TYPE_5__* @CloneImageInfo(i32* null)
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %9, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strcpy(i32 %36, i8* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = call i32* @PingImage(%struct.TYPE_5__* %39, i32* %8)
  store i32* %40, i32** %10, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = call i32 @DestroyImageInfo(%struct.TYPE_5__* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %48 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = call i32 @CatchException(i32* %8)
  %50 = call i32 @DestroyExceptionInfo(i32* %8)
  %51 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i8* (%struct.forth_stack*, i8*, ...) @failf(%struct.forth_stack* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  store i8* %53, i8** %3, align 8
  br label %66

54:                                               ; preds = %31
  %55 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %56 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %57 = getelementptr inbounds %struct.forth_stack, %struct.forth_stack* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @free_stack(%struct.forth_stack* %55, i32 %59, i32 %60)
  %62 = load %struct.forth_stack*, %struct.forth_stack** %5, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @push_image(%struct.forth_stack* %62, i32* %63)
  %65 = load i32, i32* @NEXT, align 4
  br label %66

66:                                               ; preds = %54, %45, %28, %17
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local i32 @pop_str(%struct.forth_stack*, i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @failf(%struct.forth_stack*, i8*, ...) #1

declare dso_local i32 @GetExceptionInfo(i32*) #1

declare dso_local %struct.TYPE_5__* @CloneImageInfo(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32* @PingImage(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @DestroyImageInfo(%struct.TYPE_5__*) #1

declare dso_local i32 @CatchException(i32*) #1

declare dso_local i32 @DestroyExceptionInfo(i32*) #1

declare dso_local i32 @free_stack(%struct.forth_stack*, i32, i32) #1

declare dso_local i32 @push_image(%struct.forth_stack*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
