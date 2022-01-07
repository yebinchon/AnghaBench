; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_find_short_packed_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_find_short_packed_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disambiguate_state = type { i32, i32 }
%struct.multi_pack_index = type { %struct.multi_pack_index* }
%struct.packed_git = type { %struct.packed_git* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disambiguate_state*)* @find_short_packed_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_short_packed_object(%struct.disambiguate_state* %0) #0 {
  %2 = alloca %struct.disambiguate_state*, align 8
  %3 = alloca %struct.multi_pack_index*, align 8
  %4 = alloca %struct.packed_git*, align 8
  store %struct.disambiguate_state* %0, %struct.disambiguate_state** %2, align 8
  %5 = load %struct.disambiguate_state*, %struct.disambiguate_state** %2, align 8
  %6 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.multi_pack_index* @get_multi_pack_index(i32 %7)
  store %struct.multi_pack_index* %8, %struct.multi_pack_index** %3, align 8
  br label %9

9:                                                ; preds = %24, %1
  %10 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %11 = icmp ne %struct.multi_pack_index* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.disambiguate_state*, %struct.disambiguate_state** %2, align 8
  %14 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i1 [ false, %9 ], [ %17, %12 ]
  br i1 %19, label %20, label %28

20:                                               ; preds = %18
  %21 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %22 = load %struct.disambiguate_state*, %struct.disambiguate_state** %2, align 8
  %23 = call i32 @unique_in_midx(%struct.multi_pack_index* %21, %struct.disambiguate_state* %22)
  br label %24

24:                                               ; preds = %20
  %25 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %26 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %25, i32 0, i32 0
  %27 = load %struct.multi_pack_index*, %struct.multi_pack_index** %26, align 8
  store %struct.multi_pack_index* %27, %struct.multi_pack_index** %3, align 8
  br label %9

28:                                               ; preds = %18
  %29 = load %struct.disambiguate_state*, %struct.disambiguate_state** %2, align 8
  %30 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.packed_git* @get_packed_git(i32 %31)
  store %struct.packed_git* %32, %struct.packed_git** %4, align 8
  br label %33

33:                                               ; preds = %48, %28
  %34 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %35 = icmp ne %struct.packed_git* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.disambiguate_state*, %struct.disambiguate_state** %2, align 8
  %38 = getelementptr inbounds %struct.disambiguate_state, %struct.disambiguate_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %36, %33
  %43 = phi i1 [ false, %33 ], [ %41, %36 ]
  br i1 %43, label %44, label %52

44:                                               ; preds = %42
  %45 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %46 = load %struct.disambiguate_state*, %struct.disambiguate_state** %2, align 8
  %47 = call i32 @unique_in_pack(%struct.packed_git* %45, %struct.disambiguate_state* %46)
  br label %48

48:                                               ; preds = %44
  %49 = load %struct.packed_git*, %struct.packed_git** %4, align 8
  %50 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %49, i32 0, i32 0
  %51 = load %struct.packed_git*, %struct.packed_git** %50, align 8
  store %struct.packed_git* %51, %struct.packed_git** %4, align 8
  br label %33

52:                                               ; preds = %42
  ret void
}

declare dso_local %struct.multi_pack_index* @get_multi_pack_index(i32) #1

declare dso_local i32 @unique_in_midx(%struct.multi_pack_index*, %struct.disambiguate_state*) #1

declare dso_local %struct.packed_git* @get_packed_git(i32) #1

declare dso_local i32 @unique_in_pack(%struct.packed_git*, %struct.disambiguate_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
