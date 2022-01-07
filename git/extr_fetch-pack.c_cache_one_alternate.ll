; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_cache_one_alternate.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_cache_one_alternate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.alternate_object_cache = type { i64, %struct.object**, i32 }
%struct.object = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@ALTERNATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, i8*)* @cache_one_alternate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_one_alternate(%struct.object_id* %0, i8* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.alternate_object_cache*, align 8
  %6 = alloca %struct.object*, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.alternate_object_cache*
  store %struct.alternate_object_cache* %8, %struct.alternate_object_cache** %5, align 8
  %9 = load i32, i32* @the_repository, align 4
  %10 = load %struct.object_id*, %struct.object_id** %3, align 8
  %11 = call %struct.object* @parse_object(i32 %9, %struct.object_id* %10)
  store %struct.object* %11, %struct.object** %6, align 8
  %12 = load %struct.object*, %struct.object** %6, align 8
  %13 = icmp ne %struct.object* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.object*, %struct.object** %6, align 8
  %16 = getelementptr inbounds %struct.object, %struct.object* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ALTERNATE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %2
  br label %48

22:                                               ; preds = %14
  %23 = load i32, i32* @ALTERNATE, align 4
  %24 = load %struct.object*, %struct.object** %6, align 8
  %25 = getelementptr inbounds %struct.object, %struct.object* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.alternate_object_cache*, %struct.alternate_object_cache** %5, align 8
  %29 = getelementptr inbounds %struct.alternate_object_cache, %struct.alternate_object_cache* %28, i32 0, i32 1
  %30 = load %struct.object**, %struct.object*** %29, align 8
  %31 = load %struct.alternate_object_cache*, %struct.alternate_object_cache** %5, align 8
  %32 = getelementptr inbounds %struct.alternate_object_cache, %struct.alternate_object_cache* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = load %struct.alternate_object_cache*, %struct.alternate_object_cache** %5, align 8
  %36 = getelementptr inbounds %struct.alternate_object_cache, %struct.alternate_object_cache* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ALLOC_GROW(%struct.object** %30, i64 %34, i32 %37)
  %39 = load %struct.object*, %struct.object** %6, align 8
  %40 = load %struct.alternate_object_cache*, %struct.alternate_object_cache** %5, align 8
  %41 = getelementptr inbounds %struct.alternate_object_cache, %struct.alternate_object_cache* %40, i32 0, i32 1
  %42 = load %struct.object**, %struct.object*** %41, align 8
  %43 = load %struct.alternate_object_cache*, %struct.alternate_object_cache** %5, align 8
  %44 = getelementptr inbounds %struct.alternate_object_cache, %struct.alternate_object_cache* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = getelementptr inbounds %struct.object*, %struct.object** %42, i64 %45
  store %struct.object* %39, %struct.object** %47, align 8
  br label %48

48:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @ALLOC_GROW(%struct.object**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
