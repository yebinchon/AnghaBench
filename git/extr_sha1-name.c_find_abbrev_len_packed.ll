; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_find_abbrev_len_packed.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_find_abbrev_len_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.min_abbrev_data = type { i32 }
%struct.multi_pack_index = type { %struct.multi_pack_index* }
%struct.packed_git = type { %struct.packed_git* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.min_abbrev_data*)* @find_abbrev_len_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_abbrev_len_packed(%struct.min_abbrev_data* %0) #0 {
  %2 = alloca %struct.min_abbrev_data*, align 8
  %3 = alloca %struct.multi_pack_index*, align 8
  %4 = alloca %struct.packed_git*, align 8
  store %struct.min_abbrev_data* %0, %struct.min_abbrev_data** %2, align 8
  %5 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %2, align 8
  %6 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.multi_pack_index* @get_multi_pack_index(i32 %7)
  store %struct.multi_pack_index* %8, %struct.multi_pack_index** %3, align 8
  br label %9

9:                                                ; preds = %16, %1
  %10 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %11 = icmp ne %struct.multi_pack_index* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %14 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %2, align 8
  %15 = call i32 @find_abbrev_len_for_midx(%struct.multi_pack_index* %13, %struct.min_abbrev_data* %14)
  br label %16

16:                                               ; preds = %12
  %17 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %18 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %17, i32 0, i32 0
  %19 = load %struct.multi_pack_index*, %struct.multi_pack_index** %18, align 8
  store %struct.multi_pack_index* %19, %struct.multi_pack_index** %3, align 8
  br label %9

20:                                               ; preds = %9
  %21 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %2, align 8
  %22 = getelementptr inbounds %struct.min_abbrev_data, %struct.min_abbrev_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.packed_git* @get_packed_git(i32 %23)
  store %struct.packed_git* %24, %struct.packed_git** %4, align 8
  br label %25

25:                                               ; preds = %32, %20
  %26 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %27 = icmp ne %struct.packed_git* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %30 = load %struct.min_abbrev_data*, %struct.min_abbrev_data** %2, align 8
  %31 = call i32 @find_abbrev_len_for_pack(%struct.packed_git* %29, %struct.min_abbrev_data* %30)
  br label %32

32:                                               ; preds = %28
  %33 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %34 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %33, i32 0, i32 0
  %35 = load %struct.packed_git*, %struct.packed_git** %34, align 8
  store %struct.packed_git* %35, %struct.packed_git** %4, align 8
  br label %25

36:                                               ; preds = %25
  ret void
}

declare dso_local %struct.multi_pack_index* @get_multi_pack_index(i32) #1

declare dso_local i32 @find_abbrev_len_for_midx(%struct.multi_pack_index*, %struct.min_abbrev_data*) #1

declare dso_local %struct.packed_git* @get_packed_git(i32) #1

declare dso_local i32 @find_abbrev_len_for_pack(%struct.packed_git*, %struct.min_abbrev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
