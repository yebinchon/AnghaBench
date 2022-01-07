; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_proposal.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_proposal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_proposal = type { i32, i32, i32 }

@LEV_TARG_PROPOSAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_proposal(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_proposal*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 1024
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @conv_user_id(i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %12, %3
  store i32 0, i32* %4, align 4
  br label %49

20:                                               ; preds = %15
  %21 = load i32, i32* @LEV_TARG_PROPOSAL, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 11, %22
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.lev_proposal* @alloc_log_event(i32 %21, i32 %23, i32 %24)
  store %struct.lev_proposal* %25, %struct.lev_proposal** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.lev_proposal*, %struct.lev_proposal** %8, align 8
  %28 = getelementptr inbounds %struct.lev_proposal, %struct.lev_proposal* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.lev_proposal*, %struct.lev_proposal** %8, align 8
  %30 = getelementptr inbounds %struct.lev_proposal, %struct.lev_proposal* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @filter_simple_text(i32 %31, i8* %32, i32 %33)
  %35 = load %struct.lev_proposal*, %struct.lev_proposal** %8, align 8
  %36 = getelementptr inbounds %struct.lev_proposal, %struct.lev_proposal* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @get_user(i32 %37)
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %20
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.lev_proposal*, %struct.lev_proposal** %8, align 8
  %44 = getelementptr inbounds %struct.lev_proposal, %struct.lev_proposal* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @store_proposal(i32* %42, i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %41, %19
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @conv_user_id(i32) #1

declare dso_local %struct.lev_proposal* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @filter_simple_text(i32, i8*, i32) #1

declare dso_local i32* @get_user(i32) #1

declare dso_local i32 @store_proposal(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
