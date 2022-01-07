; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_serial_clock_vote.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_serial_clock_vote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, %struct.qca_data* }
%struct.qca_data = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Voting irregularity\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Vote serial clock %s(%s)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.hci_uart*)* @serial_clock_vote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_clock_vote(i64 %0, %struct.hci_uart* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca %struct.qca_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.hci_uart* %1, %struct.hci_uart** %4, align 8
  %9 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %10 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %9, i32 0, i32 1
  %11 = load %struct.qca_data*, %struct.qca_data** %10, align 8
  store %struct.qca_data* %11, %struct.qca_data** %5, align 8
  %12 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %13 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %16 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load i64, i64* %3, align 8
  switch i64 %19, label %84 [
    i64 128, label %20
    i64 129, label %42
    i64 131, label %49
    i64 130, label %56
    i64 132, label %70
  ]

20:                                               ; preds = %2
  %21 = load i64, i64* @jiffies, align 8
  %22 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %23 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  %26 = call i32 @jiffies_to_msecs(i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %32 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %41

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %38 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %29
  br label %145

42:                                               ; preds = %2
  %43 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %44 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %46 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  store i32 1, i32* %8, align 4
  br label %86

49:                                               ; preds = %2
  %50 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %51 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %53 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  store i32 1, i32* %8, align 4
  br label %86

56:                                               ; preds = %2
  %57 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %58 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %60 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %64 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %67 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %65, %68
  store i32 %69, i32* %8, align 4
  br label %86

70:                                               ; preds = %2
  %71 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %72 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %74 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %78 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %81 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %79, %82
  store i32 %83, i32* %8, align 4
  br label %86

84:                                               ; preds = %2
  %85 = call i32 @BT_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %145

86:                                               ; preds = %70, %56, %49, %42
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %145

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %95 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @__serial_clock_on(i32 %96)
  br label %103

98:                                               ; preds = %90
  %99 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %100 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @__serial_clock_off(i32 %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %108 = load i64, i64* %3, align 8
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %112 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %107, i8* %111)
  %113 = load i64, i64* @jiffies, align 8
  %114 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %115 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %113, %116
  %118 = call i32 @jiffies_to_msecs(i64 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %103
  %122 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %123 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %128 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = add i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %141

131:                                              ; preds = %103
  %132 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %133 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* %6, align 4
  %137 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %138 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = add i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %131, %121
  %142 = load i64, i64* @jiffies, align 8
  %143 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %144 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %143, i32 0, i32 4
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %41, %84, %141, %86
  ret void
}

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @__serial_clock_on(i32) #1

declare dso_local i32 @__serial_clock_off(i32) #1

declare dso_local i32 @BT_DBG(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
