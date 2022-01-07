; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_mark_uninteresting.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_mark_uninteresting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.packed_git = type { i32 }
%struct.rev_info = type { i32 }
%struct.object = type { i32 }

@UNINTERESTING = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.packed_git*, i32, i8*)* @mark_uninteresting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_uninteresting(%struct.object_id* %0, %struct.packed_git* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.packed_git*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rev_info*, align 8
  %10 = alloca %struct.object*, align 8
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store %struct.packed_git* %1, %struct.packed_git** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.rev_info*
  store %struct.rev_info* %12, %struct.rev_info** %9, align 8
  %13 = load %struct.rev_info*, %struct.rev_info** %9, align 8
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.object_id*, %struct.object_id** %5, align 8
  %17 = call %struct.object* @parse_object(i32 %15, %struct.object_id* %16)
  store %struct.object* %17, %struct.object** %10, align 8
  %18 = load i32, i32* @UNINTERESTING, align 4
  %19 = load i32, i32* @SEEN, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.object*, %struct.object** %10, align 8
  %22 = getelementptr inbounds %struct.object, %struct.object* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  ret i32 0
}

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
