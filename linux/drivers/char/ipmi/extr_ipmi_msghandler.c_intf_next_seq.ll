; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_intf_next_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_intf_next_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i64, i32, %struct.ipmi_recv_msg* }
%struct.ipmi_recv_msg = type { i32 }

@default_retry_ms = common dso_local global i64 0, align 8
@default_max_retries = common dso_local global i32 0, align 4
@IPMI_IPMB_NUM_SEQ = common dso_local global i32 0, align 4
@MAX_MSG_TIMEOUT = common dso_local global i32 0, align 4
@IPMI_WATCH_MASK_CHECK_MESSAGES = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, %struct.ipmi_recv_msg*, i64, i32, i32, i8*, i64*)* @intf_next_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intf_next_seq(%struct.ipmi_smi* %0, %struct.ipmi_recv_msg* %1, i64 %2, i32 %3, i32 %4, i8* %5, i64* %6) #0 {
  %8 = alloca %struct.ipmi_smi*, align 8
  %9 = alloca %struct.ipmi_recv_msg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %8, align 8
  store %struct.ipmi_recv_msg* %1, %struct.ipmi_recv_msg** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i64* %6, i64** %14, align 8
  store i32 0, i32* %15, align 4
  %17 = load i64, i64* %10, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = load i64, i64* @default_retry_ms, align 8
  store i64 %20, i64* %10, align 8
  br label %21

21:                                               ; preds = %19, %7
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @default_max_retries, align 4
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %28 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %16, align 4
  br label %30

30:                                               ; preds = %51, %26
  %31 = load i32, i32* %16, align 4
  %32 = add i32 %31, 1
  %33 = load i32, i32* @IPMI_IPMB_NUM_SEQ, align 4
  %34 = urem i32 %32, %33
  %35 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %36 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %30
  %40 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %41 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %16, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  br label %56

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %16, align 4
  %53 = add i32 %52, 1
  %54 = load i32, i32* @IPMI_IPMB_NUM_SEQ, align 4
  %55 = urem i32 %53, %54
  store i32 %55, i32* %16, align 4
  br label %30

56:                                               ; preds = %49, %30
  %57 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %58 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %153, label %66

66:                                               ; preds = %56
  %67 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %9, align 8
  %68 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %69 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 6
  store %struct.ipmi_recv_msg* %67, %struct.ipmi_recv_msg** %74, align 8
  %75 = load i32, i32* @MAX_MSG_TIMEOUT, align 4
  %76 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %77 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %16, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 5
  store i32 %75, i32* %82, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %85 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %16, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i64 %83, i64* %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %93 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  store i32 %91, i32* %98, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %101 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  store i32 %99, i32* %106, align 4
  %107 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %108 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %115 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @NEXT_SEQID(i64 %121)
  %123 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %124 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %16, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 4
  store i64 %122, i64* %129, align 8
  %130 = load i32, i32* %16, align 4
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %13, align 8
  store i8 %131, i8* %132, align 1
  %133 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %134 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %133, i32 0, i32 1
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load i32, i32* %16, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = load i64*, i64** %14, align 8
  store i64 %140, i64* %141, align 8
  %142 = load i32, i32* %16, align 4
  %143 = add i32 %142, 1
  %144 = load i32, i32* @IPMI_IPMB_NUM_SEQ, align 4
  %145 = urem i32 %143, %144
  %146 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %147 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %149 = load i32, i32* @IPMI_WATCH_MASK_CHECK_MESSAGES, align 4
  %150 = call i32 @smi_add_watch(%struct.ipmi_smi* %148, i32 %149)
  %151 = load %struct.ipmi_smi*, %struct.ipmi_smi** %8, align 8
  %152 = call i32 @need_waiter(%struct.ipmi_smi* %151)
  br label %156

153:                                              ; preds = %56
  %154 = load i32, i32* @EAGAIN, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %153, %66
  %157 = load i32, i32* %15, align 4
  ret i32 %157
}

declare dso_local i64 @NEXT_SEQID(i64) #1

declare dso_local i32 @smi_add_watch(%struct.ipmi_smi*, i32) #1

declare dso_local i32 @need_waiter(%struct.ipmi_smi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
