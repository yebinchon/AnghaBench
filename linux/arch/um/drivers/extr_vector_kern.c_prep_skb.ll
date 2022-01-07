; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_prep_skb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_prep_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32*, i32, i32, i32 }
%struct.vector_private = type { i32, i32, i64, i32, i32 }
%struct.user_msghdr = type { i32, %struct.iovec* }
%struct.iovec = type { i32, i32* }
%struct.TYPE_2__ = type { i32, i32* }

@SAFETY_MARGIN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.vector_private*, %struct.user_msghdr*)* @prep_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @prep_skb(%struct.vector_private* %0, %struct.user_msghdr* %1) #0 {
  %3 = alloca %struct.vector_private*, align 8
  %4 = alloca %struct.user_msghdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.vector_private* %0, %struct.vector_private** %3, align 8
  store %struct.user_msghdr* %1, %struct.user_msghdr** %4, align 8
  %14 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %15 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %18 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = load i32, i32* @SAFETY_MARGIN, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %23 = load %struct.user_msghdr*, %struct.user_msghdr** %4, align 8
  %24 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %23, i32 0, i32 1
  %25 = load %struct.iovec*, %struct.iovec** %24, align 8
  store %struct.iovec* %25, %struct.iovec** %9, align 8
  %26 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %27 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %8, align 4
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %35 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %31
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %41 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %39, %42
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call %struct.sk_buff* @alloc_skb_with_frags(i32 %38, i32 %43, i32 3, i32* %10, i32 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %6, align 8
  %46 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %47 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %37
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = icmp eq %struct.sk_buff* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.iovec*, %struct.iovec** %9, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.iovec, %struct.iovec* %57, i64 %59
  %61 = getelementptr inbounds %struct.iovec, %struct.iovec* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.iovec*, %struct.iovec** %9, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.iovec, %struct.iovec* %62, i64 %64
  %66 = getelementptr inbounds %struct.iovec, %struct.iovec* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %173

67:                                               ; preds = %53
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %70 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @skb_reserve(%struct.sk_buff* %68, i32 %71)
  %73 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %74 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %80 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @skb_put(%struct.sk_buff* %78, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %85 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %83, %86
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %92 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call i32 @skb_reset_mac_header(%struct.sk_buff* %99)
  %101 = load i32, i32* @CHECKSUM_NONE, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.iovec*, %struct.iovec** %9, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.iovec, %struct.iovec* %107, i64 %109
  %111 = getelementptr inbounds %struct.iovec, %struct.iovec* %110, i32 0, i32 1
  store i32* %106, i32** %111, align 8
  %112 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %113 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.iovec*, %struct.iovec** %9, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.iovec, %struct.iovec* %115, i64 %117
  %119 = getelementptr inbounds %struct.iovec, %struct.iovec* %118, i32 0, i32 0
  store i32 %114, i32* %119, align 8
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %122)
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %169, %67
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %172

130:                                              ; preds = %126
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %131)
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32* %137, i32** %13, align 8
  %138 = load i32*, i32** %13, align 8
  %139 = call i32* @skb_frag_address_safe(i32* %138)
  %140 = load %struct.iovec*, %struct.iovec** %9, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.iovec, %struct.iovec* %140, i64 %142
  %144 = getelementptr inbounds %struct.iovec, %struct.iovec* %143, i32 0, i32 1
  store i32* %139, i32** %144, align 8
  %145 = load %struct.iovec*, %struct.iovec** %9, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.iovec, %struct.iovec* %145, i64 %147
  %149 = getelementptr inbounds %struct.iovec, %struct.iovec* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %160

152:                                              ; preds = %130
  %153 = load i32*, i32** %13, align 8
  %154 = call i32 @skb_frag_size(i32* %153)
  %155 = load %struct.iovec*, %struct.iovec** %9, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.iovec, %struct.iovec* %155, i64 %157
  %159 = getelementptr inbounds %struct.iovec, %struct.iovec* %158, i32 0, i32 0
  store i32 %154, i32* %159, align 8
  br label %166

160:                                              ; preds = %130
  %161 = load %struct.iovec*, %struct.iovec** %9, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.iovec, %struct.iovec* %161, i64 %163
  %165 = getelementptr inbounds %struct.iovec, %struct.iovec* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  br label %166

166:                                              ; preds = %160, %152
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %12, align 4
  br label %126

172:                                              ; preds = %126
  br label %173

173:                                              ; preds = %172, %56
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.user_msghdr*, %struct.user_msghdr** %4, align 8
  %176 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %177
}

declare dso_local %struct.sk_buff* @alloc_skb_with_frags(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32* @skb_frag_address_safe(i32*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
