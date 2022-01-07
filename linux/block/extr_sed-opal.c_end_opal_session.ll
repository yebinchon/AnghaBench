; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_end_opal_session.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_end_opal_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }

@OPAL_ENDOFSESSION = common dso_local global i32 0, align 4
@end_session_cont = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @end_opal_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @end_opal_session(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %8 = call i32 @clear_opal_cmd(%struct.opal_dev* %7)
  %9 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %10 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %11 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @set_comid(%struct.opal_dev* %9, i32 %12)
  %14 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %15 = load i32, i32* @OPAL_ENDOFSESSION, align 4
  %16 = call i32 @add_token_u8(i32* %6, %struct.opal_dev* %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %23 = load i32, i32* @end_session_cont, align 4
  %24 = call i32 @finalize_and_send(%struct.opal_dev* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @clear_opal_cmd(%struct.opal_dev*) #1

declare dso_local i32 @set_comid(%struct.opal_dev*, i32) #1

declare dso_local i32 @add_token_u8(i32*, %struct.opal_dev*, i32) #1

declare dso_local i32 @finalize_and_send(%struct.opal_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
