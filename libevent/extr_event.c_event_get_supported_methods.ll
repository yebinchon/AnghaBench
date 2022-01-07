; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_get_supported_methods.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_get_supported_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventop = type { i8* }

@event_get_supported_methods.methods = internal global i8** null, align 8
@eventops = common dso_local global %struct.eventop** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @event_get_supported_methods() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca %struct.eventop**, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.eventop**, %struct.eventop*** @eventops, align 8
  %7 = getelementptr inbounds %struct.eventop*, %struct.eventop** %6, i64 0
  store %struct.eventop** %7, %struct.eventop*** %2, align 8
  br label %8

8:                                                ; preds = %15, %0
  %9 = load %struct.eventop**, %struct.eventop*** %2, align 8
  %10 = load %struct.eventop*, %struct.eventop** %9, align 8
  %11 = icmp ne %struct.eventop* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12
  %16 = load %struct.eventop**, %struct.eventop*** %2, align 8
  %17 = getelementptr inbounds %struct.eventop*, %struct.eventop** %16, i32 1
  store %struct.eventop** %17, %struct.eventop*** %2, align 8
  br label %8

18:                                               ; preds = %8
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i8** @mm_calloc(i32 %20, i32 8)
  store i8** %21, i8*** %3, align 8
  %22 = load i8**, i8*** %3, align 8
  %23 = icmp eq i8** %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i8** null, i8*** %1, align 8
  br label %62

25:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %46, %25
  %27 = load %struct.eventop**, %struct.eventop*** @eventops, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.eventop*, %struct.eventop** %27, i64 %29
  %31 = load %struct.eventop*, %struct.eventop** %30, align 8
  %32 = icmp ne %struct.eventop* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = load %struct.eventop**, %struct.eventop*** @eventops, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.eventop*, %struct.eventop** %34, i64 %36
  %38 = load %struct.eventop*, %struct.eventop** %37, align 8
  %39 = getelementptr inbounds %struct.eventop, %struct.eventop* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8**, i8*** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  store i8* %40, i8** %45, align 8
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %26

49:                                               ; preds = %26
  %50 = load i8**, i8*** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* null, i8** %53, align 8
  %54 = load i8**, i8*** @event_get_supported_methods.methods, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i8**, i8*** @event_get_supported_methods.methods, align 8
  %58 = call i32 @mm_free(i8** %57)
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i8**, i8*** %3, align 8
  store i8** %60, i8*** @event_get_supported_methods.methods, align 8
  %61 = load i8**, i8*** @event_get_supported_methods.methods, align 8
  store i8** %61, i8*** %1, align 8
  br label %62

62:                                               ; preds = %59, %24
  %63 = load i8**, i8*** %1, align 8
  ret i8** %63
}

declare dso_local i8** @mm_calloc(i32, i32) #1

declare dso_local i32 @mm_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
