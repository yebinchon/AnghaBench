; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_start_SIDASP_opal_session.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_start_SIDASP_opal_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32*, i32 }
%struct.opal_key = type { i32, i32* }

@OPAL_SID_UID = common dso_local global i32 0, align 4
@OPAL_ADMINSP_UID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @start_SIDASP_opal_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_SIDASP_opal_session(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.opal_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.opal_key*, align 8
  store %struct.opal_dev* %0, %struct.opal_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %9 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.opal_key*
  store %struct.opal_key* %15, %struct.opal_key** %7, align 8
  %16 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %17 = load i32, i32* @OPAL_SID_UID, align 4
  %18 = load i32, i32* @OPAL_ADMINSP_UID, align 4
  %19 = load %struct.opal_key*, %struct.opal_key** %7, align 8
  %20 = getelementptr inbounds %struct.opal_key, %struct.opal_key* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.opal_key*, %struct.opal_key** %7, align 8
  %23 = getelementptr inbounds %struct.opal_key, %struct.opal_key* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @start_generic_opal_session(%struct.opal_dev* %16, i32 %17, i32 %18, i32* %21, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %39

26:                                               ; preds = %2
  %27 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %28 = load i32, i32* @OPAL_SID_UID, align 4
  %29 = load i32, i32* @OPAL_ADMINSP_UID, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %32 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @start_generic_opal_session(%struct.opal_dev* %27, i32 %28, i32 %29, i32* %30, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @kfree(i32* %35)
  %37 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %38 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %26, %13
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @start_generic_opal_session(%struct.opal_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
