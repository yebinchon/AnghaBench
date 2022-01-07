; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_low_i2c.c_pmac_i2c_do_end.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_low_i2c.c_pmac_i2c_do_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmf_function = type { i32 }
%struct.pmac_i2c_pf_inst = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmf_function*, i8*)* @pmac_i2c_do_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmac_i2c_do_end(%struct.pmf_function* %0, i8* %1) #0 {
  %3 = alloca %struct.pmf_function*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pmac_i2c_pf_inst*, align 8
  store %struct.pmf_function* %0, %struct.pmf_function** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.pmac_i2c_pf_inst*
  store %struct.pmac_i2c_pf_inst* %7, %struct.pmac_i2c_pf_inst** %5, align 8
  %8 = load %struct.pmac_i2c_pf_inst*, %struct.pmac_i2c_pf_inst** %5, align 8
  %9 = icmp eq %struct.pmac_i2c_pf_inst* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %18

11:                                               ; preds = %2
  %12 = load %struct.pmac_i2c_pf_inst*, %struct.pmac_i2c_pf_inst** %5, align 8
  %13 = getelementptr inbounds %struct.pmac_i2c_pf_inst, %struct.pmac_i2c_pf_inst* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pmac_i2c_close(i32 %14)
  %16 = load %struct.pmac_i2c_pf_inst*, %struct.pmac_i2c_pf_inst** %5, align 8
  %17 = call i32 @kfree(%struct.pmac_i2c_pf_inst* %16)
  br label %18

18:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @pmac_i2c_close(i32) #1

declare dso_local i32 @kfree(%struct.pmac_i2c_pf_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
