; ModuleID = '/home/carl/AnghaBench/git/extr_tree.c_read_one_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree.c_read_one_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.strbuf = type { i32, i32 }
%struct.index_state = type { i32 }

@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_SKIP_DFCHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.strbuf*, i8*, i32, i32, i8*)* @read_one_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_one_entry(%struct.object_id* %0, %struct.strbuf* %1, i8* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.index_state*, align 8
  store %struct.object_id* %0, %struct.object_id** %7, align 8
  store %struct.strbuf* %1, %struct.strbuf** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = bitcast i8* %14 to %struct.index_state*
  store %struct.index_state* %15, %struct.index_state** %13, align 8
  %16 = load %struct.index_state*, %struct.index_state** %13, align 8
  %17 = load %struct.object_id*, %struct.object_id** %7, align 8
  %18 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %28 = load i32, i32* @ADD_CACHE_SKIP_DFCHECK, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @read_one_entry_opt(%struct.index_state* %16, %struct.object_id* %17, i32 %20, i32 %23, i8* %24, i32 %25, i32 %26, i32 %29)
  ret i32 %30
}

declare dso_local i32 @read_one_entry_opt(%struct.index_state*, %struct.object_id*, i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
