; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_rev_list_insert_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_rev_list_insert_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fetch_negotiator = type { i32 (%struct.fetch_negotiator*, %struct.commit*)* }
%struct.commit = type opaque
%struct.object_id = type { i32 }
%struct.object = type { i64 }
%struct.commit.0 = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fetch_negotiator*, i8*, %struct.object_id*)* @rev_list_insert_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rev_list_insert_ref(%struct.fetch_negotiator* %0, i8* %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.fetch_negotiator*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.object*, align 8
  store %struct.fetch_negotiator* %0, %struct.fetch_negotiator** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  %8 = load i32, i32* @the_repository, align 4
  %9 = load i32, i32* @the_repository, align 4
  %10 = load %struct.object_id*, %struct.object_id** %6, align 8
  %11 = call i32 @parse_object(i32 %9, %struct.object_id* %10)
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.object* @deref_tag(i32 %8, i32 %11, i8* %12, i32 0)
  store %struct.object* %13, %struct.object** %7, align 8
  %14 = load %struct.object*, %struct.object** %7, align 8
  %15 = icmp ne %struct.object* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load %struct.object*, %struct.object** %7, align 8
  %18 = getelementptr inbounds %struct.object, %struct.object* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OBJ_COMMIT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %4, align 8
  %24 = getelementptr inbounds %struct.fetch_negotiator, %struct.fetch_negotiator* %23, i32 0, i32 0
  %25 = load i32 (%struct.fetch_negotiator*, %struct.commit*)*, i32 (%struct.fetch_negotiator*, %struct.commit*)** %24, align 8
  %26 = load %struct.fetch_negotiator*, %struct.fetch_negotiator** %4, align 8
  %27 = load %struct.object*, %struct.object** %7, align 8
  %28 = bitcast %struct.object* %27 to %struct.commit.0*
  %29 = bitcast %struct.commit.0* %28 to %struct.commit*
  %30 = call i32 %25(%struct.fetch_negotiator* %26, %struct.commit* %29)
  br label %31

31:                                               ; preds = %22, %16, %3
  ret i32 0
}

declare dso_local %struct.object* @deref_tag(i32, i32, i8*, i32) #1

declare dso_local i32 @parse_object(i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
