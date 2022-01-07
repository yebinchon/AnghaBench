; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_find_fallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_find_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i32, %struct.nbd_config* }
%struct.nbd_config = type { i32, %struct.nbd_sock**, i32 }
%struct.nbd_sock = type { i32, i64 }

@NBD_RT_DISCONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Attempted send on invalid socket\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Dead connection, failed to find a fallback\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbd_device*, i32)* @find_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_fallback(%struct.nbd_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nbd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nbd_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nbd_sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nbd_device* %0, %struct.nbd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %12 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %11, i32 0, i32 1
  %13 = load %struct.nbd_config*, %struct.nbd_config** %12, align 8
  store %struct.nbd_config* %13, %struct.nbd_config** %6, align 8
  store i32 -1, i32* %7, align 4
  %14 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %15 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %14, i32 0, i32 1
  %16 = load %struct.nbd_sock**, %struct.nbd_sock*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nbd_sock*, %struct.nbd_sock** %16, i64 %18
  %20 = load %struct.nbd_sock*, %struct.nbd_sock** %19, align 8
  store %struct.nbd_sock* %20, %struct.nbd_sock** %8, align 8
  %21 = load %struct.nbd_sock*, %struct.nbd_sock** %8, align 8
  %22 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @NBD_RT_DISCONNECTED, align 4
  %25 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %26 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %25, i32 0, i32 2
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %139

31:                                               ; preds = %2
  %32 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %33 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sle i32 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %38 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @disk_to_dev(i32 %39)
  %41 = call i32 @dev_err_ratelimited(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %139

43:                                               ; preds = %31
  %44 = load i32, i32* %9, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %49 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %54 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %53, i32 0, i32 1
  %55 = load %struct.nbd_sock**, %struct.nbd_sock*** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.nbd_sock*, %struct.nbd_sock** %55, i64 %57
  %59 = load %struct.nbd_sock*, %struct.nbd_sock** %58, align 8
  %60 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %139

65:                                               ; preds = %52, %46, %43
  %66 = load %struct.nbd_sock*, %struct.nbd_sock** %8, align 8
  %67 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %91, label %70

70:                                               ; preds = %65
  %71 = load %struct.nbd_sock*, %struct.nbd_sock** %8, align 8
  %72 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %75 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %73, %76
  br i1 %77, label %91, label %78

78:                                               ; preds = %70
  %79 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %80 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %79, i32 0, i32 1
  %81 = load %struct.nbd_sock**, %struct.nbd_sock*** %80, align 8
  %82 = load %struct.nbd_sock*, %struct.nbd_sock** %8, align 8
  %83 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.nbd_sock*, %struct.nbd_sock** %81, i64 %85
  %87 = load %struct.nbd_sock*, %struct.nbd_sock** %86, align 8
  %88 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %134

91:                                               ; preds = %78, %70, %65
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %117, %91
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %95 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %92
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %117

103:                                              ; preds = %98
  %104 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %105 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %104, i32 0, i32 1
  %106 = load %struct.nbd_sock**, %struct.nbd_sock*** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.nbd_sock*, %struct.nbd_sock** %106, i64 %108
  %110 = load %struct.nbd_sock*, %struct.nbd_sock** %109, align 8
  %111 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %7, align 4
  br label %120

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116, %102
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %92

120:                                              ; preds = %114, %92
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.nbd_sock*, %struct.nbd_sock** %8, align 8
  %123 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %7, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %128 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @disk_to_dev(i32 %129)
  %131 = call i32 @dev_err_ratelimited(i32 %130, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %3, align 4
  br label %139

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %78
  %135 = load %struct.nbd_sock*, %struct.nbd_sock** %8, align 8
  %136 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %134, %126, %63, %36, %29
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @disk_to_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
