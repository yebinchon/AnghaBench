; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_alloc.c_uiprivFree.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_alloc.c_uiprivFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"attempt to uiprivFree(NULL)\00", align 1
@allocations = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"%p not found in allocations array in uiprivFree()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiprivFree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (i8*, ...) @uiprivImplBug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @BASE(i8* %8)
  store i8* %9, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @g_free(i8* %10)
  %12 = load i32, i32* @allocations, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @g_ptr_array_remove(i32 %12, i8* %13)
  %15 = load i64, i64* @FALSE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %7
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 (i8*, ...) @uiprivImplBug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %7
  ret void
}

declare dso_local i32 @uiprivImplBug(i8*, ...) #1

declare dso_local i8* @BASE(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @g_ptr_array_remove(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
