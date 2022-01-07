; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_iphase.c_ia_proc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_iphase.c_ia_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FE_25MBIT_PHY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"  Board Type         :  Iphase5525-1KVC-128K\0A\00", align 1
@FE_DS3_PHY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"  Board Type         :  Iphase-ATM-DS3\00", align 1
@FE_E3_PHY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"  Board Type         :  Iphase-ATM-E3\00", align 1
@FE_UTP_OPTION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"  Board Type         :  Iphase-ATM-UTP155\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"  Board Type         :  Iphase-ATM-OC3\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"-1KVC-\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"-4KVC-\00", align 1
@MEM_SIZE_MASK = common dso_local global i32 0, align 4
@MEM_SIZE_1M = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"1M  \0A\00", align 1
@MEM_SIZE_512K = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"512K\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"128K\0A\00", align 1
@.str.10 = private unnamed_addr constant [271 x i8] c"  Number of Tx Buffer:  %u\0A  Size of Tx Buffer  :  %u\0A  Number of Rx Buffer:  %u\0A  Size of Rx Buffer  :  %u\0A  Packets Received   :  %u\0A  Packets Transmitted:  %u\0A  Cells Received     :  %u\0A  Cells Transmitted  :  %u\0A  Board Dropped Cells:  %u\0A  Board Dropped Pkts :  %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*, i32*, i8*)* @ia_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia_proc_read(%struct.atm_dev* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store %struct.atm_dev* %0, %struct.atm_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %15 = call %struct.TYPE_3__* @INPH_IA_DEV(%struct.atm_dev* %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %118, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FE_25MBIT_PHY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %155

29:                                               ; preds = %19
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FE_DS3_PHY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %9, align 4
  br label %61

38:                                               ; preds = %29
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FE_E3_PHY, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 %46, i32* %9, align 4
  br label %60

47:                                               ; preds = %38
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FE_UTP_OPTION, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 %55, i32* %9, align 4
  br label %59

56:                                               ; preds = %47
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %35
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8* %65, i8** %10, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 262144
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %80

75:                                               ; preds = %61
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %75, %70
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8* %84, i8** %10, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MEM_SIZE_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @MEM_SIZE_1M, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %80
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %9, align 4
  br label %116

97:                                               ; preds = %80
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MEM_SIZE_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @MEM_SIZE_512K, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 (i8*, i8*, ...) @sprintf(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %9, align 4
  br label %115

110:                                              ; preds = %97
  %111 = load i8*, i8** %10, align 8
  %112 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %110, %105
  br label %116

116:                                              ; preds = %115, %92
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %4, align 4
  br label %155

118:                                              ; preds = %3
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %154, label %121

121:                                              ; preds = %118
  %122 = load i8*, i8** %7, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 11
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 12
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, i8*, ...) @sprintf(i8* %122, i8* getelementptr inbounds ([271 x i8], [271 x i8]* @.str.10, i64 0, i64 0), i32 %125, i32 %128, i32 %131, i32 %134, i32 %137, i32 %140, i32 %143, i32 %146, i32 %149, i32 %152)
  store i32 %153, i32* %4, align 4
  br label %155

154:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %121, %116, %25
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.TYPE_3__* @INPH_IA_DEV(%struct.atm_dev*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
