; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_try_explicit_object_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_try_explicit_object_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ref**)* @try_explicit_object_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_explicit_object_name(i8* %0, %struct.ref** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ref**, align 8
  %6 = alloca %struct.object_id, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ref** %1, %struct.ref*** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.ref**, %struct.ref*** %5, align 8
  %12 = icmp ne %struct.ref** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = call %struct.ref* (...) @alloc_delete_ref()
  %15 = load %struct.ref**, %struct.ref*** %5, align 8
  store %struct.ref* %14, %struct.ref** %15, align 8
  br label %16

16:                                               ; preds = %13, %10
  store i32 0, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @get_oid(i8* %18, %struct.object_id* %6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %34

22:                                               ; preds = %17
  %23 = load %struct.ref**, %struct.ref*** %5, align 8
  %24 = icmp ne %struct.ref** %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i8*, i8** %4, align 8
  %27 = call %struct.ref* @alloc_ref(i8* %26)
  %28 = load %struct.ref**, %struct.ref*** %5, align 8
  store %struct.ref* %27, %struct.ref** %28, align 8
  %29 = load %struct.ref**, %struct.ref*** %5, align 8
  %30 = load %struct.ref*, %struct.ref** %29, align 8
  %31 = getelementptr inbounds %struct.ref, %struct.ref* %30, i32 0, i32 0
  %32 = call i32 @oidcpy(i32* %31, %struct.object_id* %6)
  br label %33

33:                                               ; preds = %25, %22
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %21, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.ref* @alloc_delete_ref(...) #1

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #1

declare dso_local %struct.ref* @alloc_ref(i8*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
