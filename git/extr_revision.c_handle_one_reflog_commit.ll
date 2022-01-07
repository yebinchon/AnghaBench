; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_handle_one_reflog_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_handle_one_reflog_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.all_refs_cb = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.object = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"reflog of '%s' references pruned commits\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, i8*)* @handle_one_reflog_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_one_reflog_commit(%struct.object_id* %0, i8* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.all_refs_cb*, align 8
  %6 = alloca %struct.object*, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.all_refs_cb*
  store %struct.all_refs_cb* %8, %struct.all_refs_cb** %5, align 8
  %9 = load %struct.object_id*, %struct.object_id** %3, align 8
  %10 = call i32 @is_null_oid(%struct.object_id* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %2
  %13 = load %struct.all_refs_cb*, %struct.all_refs_cb** %5, align 8
  %14 = getelementptr inbounds %struct.all_refs_cb, %struct.all_refs_cb* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.object_id*, %struct.object_id** %3, align 8
  %19 = call %struct.object* @parse_object(i32 %17, %struct.object_id* %18)
  store %struct.object* %19, %struct.object** %6, align 8
  %20 = load %struct.object*, %struct.object** %6, align 8
  %21 = icmp ne %struct.object* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %12
  %23 = load %struct.all_refs_cb*, %struct.all_refs_cb** %5, align 8
  %24 = getelementptr inbounds %struct.all_refs_cb, %struct.all_refs_cb* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.object*, %struct.object** %6, align 8
  %27 = getelementptr inbounds %struct.object, %struct.object* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.all_refs_cb*, %struct.all_refs_cb** %5, align 8
  %31 = getelementptr inbounds %struct.all_refs_cb, %struct.all_refs_cb* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.object*, %struct.object** %6, align 8
  %34 = call i32 @add_pending_object(%struct.TYPE_2__* %32, %struct.object* %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %48

35:                                               ; preds = %12
  %36 = load %struct.all_refs_cb*, %struct.all_refs_cb** %5, align 8
  %37 = getelementptr inbounds %struct.all_refs_cb, %struct.all_refs_cb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load %struct.all_refs_cb*, %struct.all_refs_cb** %5, align 8
  %42 = getelementptr inbounds %struct.all_refs_cb, %struct.all_refs_cb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.all_refs_cb*, %struct.all_refs_cb** %5, align 8
  %46 = getelementptr inbounds %struct.all_refs_cb, %struct.all_refs_cb* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %40, %35
  br label %48

48:                                               ; preds = %47, %22
  br label %49

49:                                               ; preds = %48, %2
  ret void
}

declare dso_local i32 @is_null_oid(%struct.object_id*) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @add_pending_object(%struct.TYPE_2__*, %struct.object*, i8*) #1

declare dso_local i32 @warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
