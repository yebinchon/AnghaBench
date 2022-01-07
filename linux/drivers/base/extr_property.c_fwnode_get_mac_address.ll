; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_get_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_get_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type opaque

@.str = private unnamed_addr constant [12 x i8] c"mac-address\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"address\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fwnode_get_mac_address(%struct.fwnode_handle* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 (%struct.fwnode_handle*, i8*, i8*, i32, ...) bitcast (i32 (...)* @fwnode_get_mac_addr to i32 (%struct.fwnode_handle*, i8*, i8*, i32, ...)*)(%struct.fwnode_handle* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %11)
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %4, align 8
  br label %37

19:                                               ; preds = %3
  %20 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (%struct.fwnode_handle*, i8*, i8*, i32, ...) bitcast (i32 (...)* @fwnode_get_mac_addr to i32 (%struct.fwnode_handle*, i8*, i8*, i32, ...)*)(%struct.fwnode_handle* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i8*, i8** %8, align 8
  store i8* %29, i8** %4, align 8
  br label %37

30:                                               ; preds = %19
  %31 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (%struct.fwnode_handle*, i8*, i8*, i32, ...) bitcast (i32 (...)* @fwnode_get_mac_addr to i32 (%struct.fwnode_handle*, i8*, i8*, i32, ...)*)(%struct.fwnode_handle* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %32, i32 %33)
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %4, align 8
  br label %37

37:                                               ; preds = %30, %28, %17
  %38 = load i8*, i8** %4, align 8
  ret i8* %38
}

declare dso_local i32 @fwnode_get_mac_addr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
