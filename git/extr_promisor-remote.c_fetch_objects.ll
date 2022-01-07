; ModuleID = '/home/carl/AnghaBench/git/extr_promisor-remote.c_fetch_objects.c'
source_filename = "/home/carl/AnghaBench/git/extr_promisor-remote.c_fetch_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.ref = type { i32, %struct.ref*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32)* @fetch_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_objects(i8* %0, %struct.object_id* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.ref* null, %struct.ref** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %34, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load %struct.object_id*, %struct.object_id** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.object_id, %struct.object_id* %15, i64 %17
  %19 = call i32 @oid_to_hex(%struct.object_id* %18)
  %20 = call %struct.ref* @alloc_ref(i32 %19)
  store %struct.ref* %20, %struct.ref** %9, align 8
  %21 = load %struct.ref*, %struct.ref** %9, align 8
  %22 = getelementptr inbounds %struct.ref, %struct.ref* %21, i32 0, i32 2
  %23 = load %struct.object_id*, %struct.object_id** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.object_id, %struct.object_id* %23, i64 %25
  %27 = call i32 @oidcpy(i32* %22, %struct.object_id* %26)
  %28 = load %struct.ref*, %struct.ref** %9, align 8
  %29 = getelementptr inbounds %struct.ref, %struct.ref* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.ref*, %struct.ref** %7, align 8
  %31 = load %struct.ref*, %struct.ref** %9, align 8
  %32 = getelementptr inbounds %struct.ref, %struct.ref* %31, i32 0, i32 1
  store %struct.ref* %30, %struct.ref** %32, align 8
  %33 = load %struct.ref*, %struct.ref** %9, align 8
  store %struct.ref* %33, %struct.ref** %7, align 8
  br label %34

34:                                               ; preds = %14
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %10

37:                                               ; preds = %10
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.ref*, %struct.ref** %7, align 8
  %40 = call i32 @fetch_refs(i8* %38, %struct.ref* %39)
  ret i32 %40
}

declare dso_local %struct.ref* @alloc_ref(i32) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

declare dso_local i32 @fetch_refs(i8*, %struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
