; ModuleID = '/home/carl/AnghaBench/linux/arch/um/os-Linux/drivers/extr_tuntap_user.c_tuntap_add_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/os-Linux/drivers/extr_tuntap_user.c_tuntap_add_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuntap_data = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @tuntap_add_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tuntap_add_addr(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tuntap_data*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.tuntap_data*
  store %struct.tuntap_data* %9, %struct.tuntap_data** %7, align 8
  %10 = load %struct.tuntap_data*, %struct.tuntap_data** %7, align 8
  %11 = getelementptr inbounds %struct.tuntap_data, %struct.tuntap_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @tap_check_ips(i32 %12, i8* %13)
  %15 = load %struct.tuntap_data*, %struct.tuntap_data** %7, align 8
  %16 = getelementptr inbounds %struct.tuntap_data, %struct.tuntap_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.tuntap_data*, %struct.tuntap_data** %7, align 8
  %21 = getelementptr inbounds %struct.tuntap_data, %struct.tuntap_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %3
  br label %32

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.tuntap_data*, %struct.tuntap_data** %7, align 8
  %29 = getelementptr inbounds %struct.tuntap_data, %struct.tuntap_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @open_addr(i8* %26, i8* %27, i32 %30)
  br label %32

32:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @tap_check_ips(i32, i8*) #1

declare dso_local i32 @open_addr(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
