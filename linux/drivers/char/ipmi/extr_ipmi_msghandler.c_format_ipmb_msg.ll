; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_format_ipmb_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_format_ipmb_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi_msg = type { i32*, i32, i64 }
%struct.kernel_ipmi_msg = type { i32, i8, i32, i32 }
%struct.ipmi_ipmb_addr = type { i32, i32, i32 }

@IPMI_NETFN_APP_REQUEST = common dso_local global i32 0, align 4
@IPMI_SEND_MSG_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_smi_msg*, %struct.kernel_ipmi_msg*, %struct.ipmi_ipmb_addr*, i64, i8, i32, i8, i8)* @format_ipmb_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_ipmb_msg(%struct.ipmi_smi_msg* %0, %struct.kernel_ipmi_msg* %1, %struct.ipmi_ipmb_addr* %2, i64 %3, i8 zeroext %4, i32 %5, i8 zeroext %6, i8 zeroext %7) #0 {
  %9 = alloca %struct.ipmi_smi_msg*, align 8
  %10 = alloca %struct.kernel_ipmi_msg*, align 8
  %11 = alloca %struct.ipmi_ipmb_addr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  store %struct.ipmi_smi_msg* %0, %struct.ipmi_smi_msg** %9, align 8
  store %struct.kernel_ipmi_msg* %1, %struct.kernel_ipmi_msg** %10, align 8
  store %struct.ipmi_ipmb_addr* %2, %struct.ipmi_ipmb_addr** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8 %4, i8* %13, align 1
  store i32 %5, i32* %14, align 4
  store i8 %6, i8* %15, align 1
  store i8 %7, i8* %16, align 1
  %18 = load i32, i32* %14, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i32, i32* @IPMI_NETFN_APP_REQUEST, align 4
  %20 = shl i32 %19, 2
  %21 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %22 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @IPMI_SEND_MSG_CMD, align 4
  %26 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %27 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %25, i32* %29, align 4
  %30 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %11, align 8
  %31 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %34 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %8
  %40 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %41 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %8
  %45 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %11, align 8
  %46 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %49 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %47, i32* %54, align 4
  %55 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %10, align 8
  %56 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 2
  %59 = load %struct.ipmi_ipmb_addr*, %struct.ipmi_ipmb_addr** %11, align 8
  %60 = getelementptr inbounds %struct.ipmi_ipmb_addr, %struct.ipmi_ipmb_addr* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 3
  %63 = or i32 %58, %62
  %64 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %65 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %17, align 4
  %68 = add nsw i32 %67, 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %63, i32* %70, align 4
  %71 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %72 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %74, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = call i8* @ipmb_checksum(i32* %77, i32 2)
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %81 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, 5
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %79, i32* %86, align 4
  %87 = load i8, i8* %15, align 1
  %88 = zext i8 %87 to i32
  %89 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %90 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, 6
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %88, i32* %95, align 4
  %96 = load i8, i8* %13, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, 2
  %99 = load i8, i8* %16, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %98, %100
  %102 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %103 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %105, 7
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %101, i32* %108, align 4
  %109 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %10, align 8
  %110 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %109, i32 0, i32 1
  %111 = load i8, i8* %110, align 4
  %112 = zext i8 %111 to i32
  %113 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %114 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 %112, i32* %119, align 4
  %120 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %10, align 8
  %121 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %44
  %125 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %126 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %128, 9
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = bitcast i32* %131 to i8*
  %133 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %10, align 8
  %134 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %10, align 8
  %137 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @memcpy(i8* %132, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %124, %44
  %141 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %10, align 8
  %142 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 9
  %145 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %146 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  %147 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %148 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, 6
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %155 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %156, 6
  %158 = call i8* @ipmb_checksum(i32* %153, i32 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %161 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %17, align 4
  %164 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %165 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %163, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %162, i64 %168
  store i32 %159, i32* %169, align 4
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 1, %170
  %172 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %173 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load i64, i64* %12, align 8
  %177 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %9, align 8
  %178 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  ret void
}

declare dso_local i8* @ipmb_checksum(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
