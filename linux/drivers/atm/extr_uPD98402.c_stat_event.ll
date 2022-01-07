; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_uPD98402.c_stat_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_uPD98402.c_stat_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }

@PCR = common dso_local global i32 0, align 4
@uPD98402_PFM_PFEB = common dso_local global i8 0, align 1
@path_febe = common dso_local global i32 0, align 4
@PFECB = common dso_local global i32 0, align 4
@uPD98402_PFM_LFEB = common dso_local global i8 0, align 1
@line_febe = common dso_local global i32 0, align 4
@LECCT = common dso_local global i32 0, align 4
@uPD98402_PFM_B3E = common dso_local global i8 0, align 1
@path_bip = common dso_local global i32 0, align 4
@B3ECT = common dso_local global i32 0, align 4
@uPD98402_PFM_B2E = common dso_local global i8 0, align 1
@line_bip = common dso_local global i32 0, align 4
@B2ECT = common dso_local global i32 0, align 4
@uPD98402_PFM_B1E = common dso_local global i8 0, align 1
@section_bip = common dso_local global i32 0, align 4
@B1ECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_dev*)* @stat_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stat_event(%struct.atm_dev* %0) #0 {
  %2 = alloca %struct.atm_dev*, align 8
  %3 = alloca i8, align 1
  store %struct.atm_dev* %0, %struct.atm_dev** %2, align 8
  %4 = load i32, i32* @PCR, align 4
  %5 = call zeroext i8 @GET(i32 %4)
  store i8 %5, i8* %3, align 1
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* @uPD98402_PFM_PFEB, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @path_febe, align 4
  %14 = load i32, i32* @PFECB, align 4
  %15 = call i32 @ADD_LIMITED(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @uPD98402_PFM_LFEB, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @line_febe, align 4
  %25 = load i32, i32* @LECCT, align 4
  %26 = call i32 @ADD_LIMITED(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %16
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @uPD98402_PFM_B3E, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @path_bip, align 4
  %36 = load i32, i32* @B3ECT, align 4
  %37 = call i32 @ADD_LIMITED(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i8, i8* %3, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @uPD98402_PFM_B2E, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @line_bip, align 4
  %47 = load i32, i32* @B2ECT, align 4
  %48 = call i32 @ADD_LIMITED(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i8, i8* %3, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @uPD98402_PFM_B1E, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @section_bip, align 4
  %58 = load i32, i32* @B1ECT, align 4
  %59 = call i32 @ADD_LIMITED(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %49
  ret void
}

declare dso_local zeroext i8 @GET(i32) #1

declare dso_local i32 @ADD_LIMITED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
