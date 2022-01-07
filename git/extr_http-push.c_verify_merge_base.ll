; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_verify_merge_base.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_verify_merge_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.ref = type { i8*, %struct.object_id }
%struct.commit = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.ref*)* @verify_merge_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_merge_base(%struct.object_id* %0, %struct.ref* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.ref*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.commit*, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store %struct.ref* %1, %struct.ref** %4, align 8
  %7 = load %struct.object_id*, %struct.object_id** %3, align 8
  %8 = call %struct.commit* @lookup_commit_or_die(%struct.object_id* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.commit* %8, %struct.commit** %5, align 8
  %9 = load %struct.ref*, %struct.ref** %4, align 8
  %10 = getelementptr inbounds %struct.ref, %struct.ref* %9, i32 0, i32 1
  %11 = load %struct.ref*, %struct.ref** %4, align 8
  %12 = getelementptr inbounds %struct.ref, %struct.ref* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call %struct.commit* @lookup_commit_or_die(%struct.object_id* %10, i8* %13)
  store %struct.commit* %14, %struct.commit** %6, align 8
  %15 = load %struct.commit*, %struct.commit** %6, align 8
  %16 = load %struct.commit*, %struct.commit** %5, align 8
  %17 = call i32 @in_merge_bases(%struct.commit* %15, %struct.commit* %16)
  ret i32 %17
}

declare dso_local %struct.commit* @lookup_commit_or_die(%struct.object_id*, i8*) #1

declare dso_local i32 @in_merge_bases(%struct.commit*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
