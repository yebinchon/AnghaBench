; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_xen-tpmfront.c_setup_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_xen-tpmfront.c_setup_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.tpm_private = type { i32, i32, i32, i8* }
%struct.xenbus_transaction = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"allocating shared ring\00", align 1
@tpmif_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"tpmif\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"allocating TPM irq\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"starting transaction\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ring-ref\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"writing ring-ref\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"event-channel\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"writing event-channel\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"feature-protocol-v2\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"writing feature-protocol-v2\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"completing transaction\00", align 1
@XenbusStateInitialised = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.tpm_private*)* @setup_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_ring(%struct.xenbus_device* %0, %struct.tpm_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.tpm_private*, align 8
  %6 = alloca %struct.xenbus_transaction, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.tpm_private* %1, %struct.tpm_private** %5, align 8
  store i8* null, i8** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load i32, i32* @__GFP_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @__get_free_page(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.tpm_private*, %struct.tpm_private** %5, align 8
  %16 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %15, i32 0, i32 3
  store i8* %14, i8** %16, align 8
  %17 = load %struct.tpm_private*, %struct.tpm_private** %5, align 8
  %18 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %17, i32 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %22, i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %147

28:                                               ; preds = %2
  %29 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %30 = load %struct.tpm_private*, %struct.tpm_private** %5, align 8
  %31 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @xenbus_grant_ring(%struct.xenbus_device* %29, i8* %32, i32 1, i32* %9)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %147

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.tpm_private*, %struct.tpm_private** %5, align 8
  %41 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %43 = load %struct.tpm_private*, %struct.tpm_private** %5, align 8
  %44 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %43, i32 0, i32 1
  %45 = call i32 @xenbus_alloc_evtchn(%struct.xenbus_device* %42, i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %147

50:                                               ; preds = %38
  %51 = load %struct.tpm_private*, %struct.tpm_private** %5, align 8
  %52 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @tpmif_interrupt, align 4
  %55 = load %struct.tpm_private*, %struct.tpm_private** %5, align 8
  %56 = call i32 @bind_evtchn_to_irqhandler(i32 %53, i32 %54, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.tpm_private* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %60, i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %147

64:                                               ; preds = %50
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.tpm_private*, %struct.tpm_private** %5, align 8
  %67 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %121, %64
  %69 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %6)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %73, i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %147

77:                                               ; preds = %68
  %78 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %79 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tpm_private*, %struct.tpm_private** %5, align 8
  %82 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_printf(i32 %85, i32 %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %134

90:                                               ; preds = %77
  %91 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %92 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.tpm_private*, %struct.tpm_private** %5, align 8
  %95 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %6, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_printf(i32 %98, i32 %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %134

103:                                              ; preds = %90
  %104 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %105 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %6, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i32, i8*, i8*, ...) @xenbus_printf(i32 %108, i32 %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8** %7, align 8
  br label %134

113:                                              ; preds = %103
  %114 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %6, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @xenbus_transaction_end(i32 %115, i32 0)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @EAGAIN, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %68

122:                                              ; preds = %113
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %126, i32 %127, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %147

130:                                              ; preds = %122
  %131 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %132 = load i32, i32* @XenbusStateInitialised, align 4
  %133 = call i32 @xenbus_switch_state(%struct.xenbus_device* %131, i32 %132)
  store i32 0, i32* %3, align 4
  br label %147

134:                                              ; preds = %112, %102, %89
  %135 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %6, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @xenbus_transaction_end(i32 %136, i32 1)
  %138 = load i8*, i8** %7, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i8*, i8** %7, align 8
  %144 = call i32 @xenbus_dev_error(%struct.xenbus_device* %141, i32 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %140, %134
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %130, %125, %72, %59, %48, %36, %21
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

declare dso_local i32 @xenbus_grant_ring(%struct.xenbus_device*, i8*, i32, i32*) #1

declare dso_local i32 @xenbus_alloc_evtchn(%struct.xenbus_device*, i32*) #1

declare dso_local i32 @bind_evtchn_to_irqhandler(i32, i32, i32, i8*, %struct.tpm_private*) #1

declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #1

declare dso_local i32 @xenbus_printf(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @xenbus_dev_error(%struct.xenbus_device*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
