; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_add_one_alternate_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_add_one_alternate_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.add_alternate_refs_data = type { i32, i32 }
%struct.object = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c".alternate\00", align 1
@REV_CMD_REV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, i8*)* @add_one_alternate_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_one_alternate_ref(%struct.object_id* %0, i8* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.add_alternate_refs_data*, align 8
  %7 = alloca %struct.object*, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.add_alternate_refs_data*
  store %struct.add_alternate_refs_data* %9, %struct.add_alternate_refs_data** %6, align 8
  %10 = load %struct.add_alternate_refs_data*, %struct.add_alternate_refs_data** %6, align 8
  %11 = getelementptr inbounds %struct.add_alternate_refs_data, %struct.add_alternate_refs_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.object_id*, %struct.object_id** %3, align 8
  %15 = load %struct.add_alternate_refs_data*, %struct.add_alternate_refs_data** %6, align 8
  %16 = getelementptr inbounds %struct.add_alternate_refs_data, %struct.add_alternate_refs_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.object* @get_reference(i32 %12, i8* %13, %struct.object_id* %14, i32 %17)
  store %struct.object* %18, %struct.object** %7, align 8
  %19 = load %struct.add_alternate_refs_data*, %struct.add_alternate_refs_data** %6, align 8
  %20 = getelementptr inbounds %struct.add_alternate_refs_data, %struct.add_alternate_refs_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.object*, %struct.object** %7, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @REV_CMD_REV, align 4
  %25 = load %struct.add_alternate_refs_data*, %struct.add_alternate_refs_data** %6, align 8
  %26 = getelementptr inbounds %struct.add_alternate_refs_data, %struct.add_alternate_refs_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @add_rev_cmdline(i32 %21, %struct.object* %22, i8* %23, i32 %24, i32 %27)
  %29 = load %struct.add_alternate_refs_data*, %struct.add_alternate_refs_data** %6, align 8
  %30 = getelementptr inbounds %struct.add_alternate_refs_data, %struct.add_alternate_refs_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.object*, %struct.object** %7, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @add_pending_object(i32 %31, %struct.object* %32, i8* %33)
  ret void
}

declare dso_local %struct.object* @get_reference(i32, i8*, %struct.object_id*, i32) #1

declare dso_local i32 @add_rev_cmdline(i32, %struct.object*, i8*, i32, i32) #1

declare dso_local i32 @add_pending_object(i32, %struct.object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
