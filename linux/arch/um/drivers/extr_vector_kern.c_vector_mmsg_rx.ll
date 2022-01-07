; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_mmsg_rx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_mmsg_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_private = type { i32, i64, i32 (i32, %struct.sk_buff*, %struct.vector_private*)*, i64, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_7__*, %struct.vector_queue* }
%struct.sk_buff = type opaque
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.vector_queue = type { i8**, i32, i32, %struct.mmsghdr* }
%struct.mmsghdr = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff.0 = type { i64, i32, i32, i32 }

@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_private*)* @vector_mmsg_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_mmsg_rx(%struct.vector_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vector_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vector_queue*, align 8
  %7 = alloca %struct.sk_buff.0*, align 8
  %8 = alloca %struct.mmsghdr*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.vector_private* %0, %struct.vector_private** %3, align 8
  %11 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %12 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %11, i32 0, i32 7
  %13 = load %struct.vector_queue*, %struct.vector_queue** %12, align 8
  store %struct.vector_queue* %13, %struct.vector_queue** %6, align 8
  %14 = load %struct.vector_queue*, %struct.vector_queue** %6, align 8
  %15 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %14, i32 0, i32 3
  %16 = load %struct.mmsghdr*, %struct.mmsghdr** %15, align 8
  store %struct.mmsghdr* %16, %struct.mmsghdr** %8, align 8
  %17 = load %struct.vector_queue*, %struct.vector_queue** %6, align 8
  %18 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  store i8** %19, i8*** %9, align 8
  %20 = load %struct.vector_queue*, %struct.vector_queue** %6, align 8
  %21 = call i32 @prep_queue_for_rx(%struct.vector_queue* %20)
  %22 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %23 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %22, i32 0, i32 6
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vector_queue*, %struct.vector_queue** %6, align 8
  %28 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %27, i32 0, i32 3
  %29 = load %struct.mmsghdr*, %struct.mmsghdr** %28, align 8
  %30 = load %struct.vector_queue*, %struct.vector_queue** %6, align 8
  %31 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @uml_vector_recvmmsg(i32 %26, %struct.mmsghdr* %29, i32 %32, i32 0)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %38 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %1
  %40 = load i32, i32* %4, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %187

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.vector_queue*, %struct.vector_queue** %6, align 8
  %47 = getelementptr inbounds %struct.vector_queue, %struct.vector_queue* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %156, %44
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %159

52:                                               ; preds = %48
  %53 = load i8**, i8*** %9, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = bitcast i8* %54 to %struct.sk_buff.0*
  store %struct.sk_buff.0* %55, %struct.sk_buff.0** %7, align 8
  %56 = load %struct.mmsghdr*, %struct.mmsghdr** %8, align 8
  %57 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %60 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %143

63:                                               ; preds = %52
  %64 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %65 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %105

68:                                               ; preds = %63
  %69 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %70 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %69, i32 0, i32 2
  %71 = load i32 (i32, %struct.sk_buff*, %struct.vector_private*)*, i32 (i32, %struct.sk_buff*, %struct.vector_private*)** %70, align 8
  %72 = load %struct.mmsghdr*, %struct.mmsghdr** %8, align 8
  %73 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sk_buff.0*, %struct.sk_buff.0** %7, align 8
  %79 = bitcast %struct.sk_buff.0* %78 to %struct.sk_buff*
  %80 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %81 = call i32 %71(i32 %77, %struct.sk_buff* %79, %struct.vector_private* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %68
  %85 = load %struct.sk_buff.0*, %struct.sk_buff.0** %7, align 8
  %86 = call i32 @dev_kfree_skb_irq(%struct.sk_buff.0* %85)
  %87 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %88 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %156

92:                                               ; preds = %68
  %93 = load i32, i32* %10, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %97 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %102 = load %struct.sk_buff.0*, %struct.sk_buff.0** %7, align 8
  %103 = getelementptr inbounds %struct.sk_buff.0, %struct.sk_buff.0* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %95, %92
  br label %105

105:                                              ; preds = %104, %63
  %106 = load %struct.sk_buff.0*, %struct.sk_buff.0** %7, align 8
  %107 = load %struct.mmsghdr*, %struct.mmsghdr** %8, align 8
  %108 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %111 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %109, %112
  %114 = call i32 @pskb_trim(%struct.sk_buff.0* %106, i64 %113)
  %115 = load %struct.sk_buff.0*, %struct.sk_buff.0** %7, align 8
  %116 = load %struct.sk_buff.0*, %struct.sk_buff.0** %7, align 8
  %117 = getelementptr inbounds %struct.sk_buff.0, %struct.sk_buff.0* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @eth_type_trans(%struct.sk_buff.0* %115, i32 %118)
  %120 = load %struct.sk_buff.0*, %struct.sk_buff.0** %7, align 8
  %121 = getelementptr inbounds %struct.sk_buff.0, %struct.sk_buff.0* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.sk_buff.0*, %struct.sk_buff.0** %7, align 8
  %123 = getelementptr inbounds %struct.sk_buff.0, %struct.sk_buff.0* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %126 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %125, i32 0, i32 5
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %124
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  %134 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %135 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %134, i32 0, i32 5
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load %struct.sk_buff.0*, %struct.sk_buff.0** %7, align 8
  %142 = call i32 @netif_rx(%struct.sk_buff.0* %141)
  br label %150

143:                                              ; preds = %52
  %144 = load %struct.sk_buff.0*, %struct.sk_buff.0** %7, align 8
  %145 = icmp ne %struct.sk_buff.0* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.sk_buff.0*, %struct.sk_buff.0** %7, align 8
  %148 = call i32 @dev_kfree_skb_irq(%struct.sk_buff.0* %147)
  br label %149

149:                                              ; preds = %146, %143
  br label %150

150:                                              ; preds = %149, %105
  %151 = load i8**, i8*** %9, align 8
  store i8* null, i8** %151, align 8
  %152 = load %struct.mmsghdr*, %struct.mmsghdr** %8, align 8
  %153 = getelementptr inbounds %struct.mmsghdr, %struct.mmsghdr* %152, i32 1
  store %struct.mmsghdr* %153, %struct.mmsghdr** %8, align 8
  %154 = load i8**, i8*** %9, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i32 1
  store i8** %155, i8*** %9, align 8
  br label %156

156:                                              ; preds = %150, %84
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %48

159:                                              ; preds = %48
  %160 = load i32, i32* %4, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %185

162:                                              ; preds = %159
  %163 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %164 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %162
  %170 = load i32, i32* %4, align 4
  %171 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %172 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 8
  br label %174

174:                                              ; preds = %169, %162
  %175 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %176 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %178, %179
  %181 = ashr i32 %180, 1
  %182 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %183 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 1
  store i32 %181, i32* %184, align 4
  br label %185

185:                                              ; preds = %174, %159
  %186 = load i32, i32* %4, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %185, %42
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @prep_queue_for_rx(%struct.vector_queue*) #1

declare dso_local i32 @uml_vector_recvmmsg(i32, %struct.mmsghdr*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff.0*) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff.0*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff.0*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
