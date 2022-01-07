; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_do_for_each_ref_helper.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_do_for_each_ref_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.do_for_each_ref_help = type { i32 (i8*, %struct.object_id*, i32, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, %struct.object_id*, i32, i8*)* @do_for_each_ref_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_for_each_ref_helper(%struct.repository* %0, i8* %1, %struct.object_id* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.do_for_each_ref_help*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.do_for_each_ref_help*
  store %struct.do_for_each_ref_help* %13, %struct.do_for_each_ref_help** %11, align 8
  %14 = load %struct.do_for_each_ref_help*, %struct.do_for_each_ref_help** %11, align 8
  %15 = getelementptr inbounds %struct.do_for_each_ref_help, %struct.do_for_each_ref_help* %14, i32 0, i32 0
  %16 = load i32 (i8*, %struct.object_id*, i32, i32)*, i32 (i8*, %struct.object_id*, i32, i32)** %15, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.object_id*, %struct.object_id** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.do_for_each_ref_help*, %struct.do_for_each_ref_help** %11, align 8
  %21 = getelementptr inbounds %struct.do_for_each_ref_help, %struct.do_for_each_ref_help* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %16(i8* %17, %struct.object_id* %18, i32 %19, i32 %22)
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
