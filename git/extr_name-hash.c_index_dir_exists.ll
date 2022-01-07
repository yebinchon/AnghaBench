; ModuleID = '/home/carl/AnghaBench/git/extr_name-hash.c_index_dir_exists.c'
source_filename = "/home/carl/AnghaBench/git/extr_name-hash.c_index_dir_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.dir_entry = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @index_dir_exists(%struct.index_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dir_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.index_state*, %struct.index_state** %4, align 8
  %9 = call i32 @lazy_init_name_hash(%struct.index_state* %8)
  %10 = load %struct.index_state*, %struct.index_state** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.dir_entry* @find_dir_entry(%struct.index_state* %10, i8* %11, i32 %12)
  store %struct.dir_entry* %13, %struct.dir_entry** %7, align 8
  %14 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %15 = icmp ne %struct.dir_entry* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.dir_entry*, %struct.dir_entry** %7, align 8
  %18 = getelementptr inbounds %struct.dir_entry, %struct.dir_entry* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %3
  %22 = phi i1 [ false, %3 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i32 @lazy_init_name_hash(%struct.index_state*) #1

declare dso_local %struct.dir_entry* @find_dir_entry(%struct.index_state*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
