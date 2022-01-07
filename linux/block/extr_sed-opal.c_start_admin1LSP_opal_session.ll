; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_start_admin1LSP_opal_session.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_start_admin1LSP_opal_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_key = type { i32, i32 }

@OPAL_ADMIN1_UID = common dso_local global i32 0, align 4
@OPAL_LOCKINGSP_UID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @start_admin1LSP_opal_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_admin1LSP_opal_session(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.opal_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.opal_key*, align 8
  store %struct.opal_dev* %0, %struct.opal_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.opal_key*
  store %struct.opal_key* %7, %struct.opal_key** %5, align 8
  %8 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %9 = load i32, i32* @OPAL_ADMIN1_UID, align 4
  %10 = load i32, i32* @OPAL_LOCKINGSP_UID, align 4
  %11 = load %struct.opal_key*, %struct.opal_key** %5, align 8
  %12 = getelementptr inbounds %struct.opal_key, %struct.opal_key* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.opal_key*, %struct.opal_key** %5, align 8
  %15 = getelementptr inbounds %struct.opal_key, %struct.opal_key* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @start_generic_opal_session(%struct.opal_dev* %8, i32 %9, i32 %10, i32 %13, i32 %16)
  ret i32 %17
}

declare dso_local i32 @start_generic_opal_session(%struct.opal_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
