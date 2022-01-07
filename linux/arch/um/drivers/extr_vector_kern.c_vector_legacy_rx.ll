; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_legacy_rx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_vector_legacy_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_private = type { i32, i32, i32 (i32, %struct.sk_buff*, %struct.vector_private*)*, %struct.TYPE_8__*, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.sk_buff = type opaque
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.user_msghdr = type { i32, i64, i64, i32*, %struct.iovec*, i64, i32* }
%struct.iovec = type { i32, i32 }
%struct.sk_buff.0 = type { i64, i32, i32, i32 }

@MAX_IOV_SIZE = common dso_local global i32 0, align 4
@drop_buffer = common dso_local global i32 0, align 4
@DROP_BUFFER_SIZE = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_private*)* @vector_legacy_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector_legacy_rx(%struct.vector_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vector_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.user_msghdr, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff.0*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vector_private* %0, %struct.vector_private** %3, align 8
  %12 = load i32, i32* @MAX_IOV_SIZE, align 4
  %13 = add nsw i32 2, %12
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca %struct.iovec, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %17 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %5, i32 0, i32 6
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %5, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %5, i32 0, i32 4
  store %struct.iovec* %16, %struct.iovec** %19, align 8
  %20 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %5, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %5, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %5, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %24 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %1
  %28 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %29 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i64 0
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %34 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i64 0
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 16
  br label %38

38:                                               ; preds = %27, %1
  %39 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %40 = call %struct.sk_buff.0* @prep_skb(%struct.vector_private* %39, %struct.user_msghdr* %5)
  store %struct.sk_buff.0* %40, %struct.sk_buff.0** %9, align 8
  %41 = load %struct.sk_buff.0*, %struct.sk_buff.0** %9, align 8
  %42 = icmp eq %struct.sk_buff.0* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load i32, i32* @drop_buffer, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i64 %46
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* @DROP_BUFFER_SIZE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %16, i64 %51
  %53 = getelementptr inbounds %struct.iovec, %struct.iovec* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = getelementptr inbounds %struct.user_msghdr, %struct.user_msghdr* %5, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %56 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %55, i32 0, i32 3
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %43, %38
  %63 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %64 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %63, i32 0, i32 7
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @uml_vector_recvmsg(i32 %67, %struct.user_msghdr* %5, i32 0)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %73 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %173

75:                                               ; preds = %62
  %76 = load %struct.sk_buff.0*, %struct.sk_buff.0** %9, align 8
  %77 = icmp ne %struct.sk_buff.0* %76, null
  br i1 %77, label %78, label %171

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %81 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %167

84:                                               ; preds = %78
  %85 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %86 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %130

89:                                               ; preds = %84
  %90 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %91 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %90, i32 0, i32 2
  %92 = load i32 (i32, %struct.sk_buff*, %struct.vector_private*)*, i32 (i32, %struct.sk_buff*, %struct.vector_private*)** %91, align 8
  %93 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %94 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.sk_buff.0*, %struct.sk_buff.0** %9, align 8
  %97 = bitcast %struct.sk_buff.0* %96 to %struct.sk_buff*
  %98 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %99 = call i32 %92(i32 %95, %struct.sk_buff* %97, %struct.vector_private* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %89
  %103 = load %struct.sk_buff.0*, %struct.sk_buff.0** %9, align 8
  %104 = call i32 @dev_kfree_skb_irq(%struct.sk_buff.0* %103)
  %105 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %106 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %105, i32 0, i32 3
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %113 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %173

117:                                              ; preds = %89
  %118 = load i32, i32* %10, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %122 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %127 = load %struct.sk_buff.0*, %struct.sk_buff.0** %9, align 8
  %128 = getelementptr inbounds %struct.sk_buff.0, %struct.sk_buff.0* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %120, %117
  br label %130

130:                                              ; preds = %129, %84
  %131 = load %struct.sk_buff.0*, %struct.sk_buff.0** %9, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %135 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 %133, %136
  %138 = call i32 @pskb_trim(%struct.sk_buff.0* %131, i64 %137)
  %139 = load %struct.sk_buff.0*, %struct.sk_buff.0** %9, align 8
  %140 = load %struct.sk_buff.0*, %struct.sk_buff.0** %9, align 8
  %141 = getelementptr inbounds %struct.sk_buff.0, %struct.sk_buff.0* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @eth_type_trans(%struct.sk_buff.0* %139, i32 %142)
  %144 = load %struct.sk_buff.0*, %struct.sk_buff.0** %9, align 8
  %145 = getelementptr inbounds %struct.sk_buff.0, %struct.sk_buff.0* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load %struct.sk_buff.0*, %struct.sk_buff.0** %9, align 8
  %147 = getelementptr inbounds %struct.sk_buff.0, %struct.sk_buff.0* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %150 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %149, i32 0, i32 3
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %148
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 4
  %158 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %159 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %158, i32 0, i32 3
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  %165 = load %struct.sk_buff.0*, %struct.sk_buff.0** %9, align 8
  %166 = call i32 @netif_rx(%struct.sk_buff.0* %165)
  br label %170

167:                                              ; preds = %78
  %168 = load %struct.sk_buff.0*, %struct.sk_buff.0** %9, align 8
  %169 = call i32 @dev_kfree_skb_irq(%struct.sk_buff.0* %168)
  br label %170

170:                                              ; preds = %167, %130
  br label %171

171:                                              ; preds = %170, %75
  %172 = load i32, i32* %4, align 4
  store i32 %172, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %173

173:                                              ; preds = %171, %102, %71
  %174 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sk_buff.0* @prep_skb(%struct.vector_private*, %struct.user_msghdr*) #2

declare dso_local i32 @uml_vector_recvmsg(i32, %struct.user_msghdr*, i32) #2

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff.0*) #2

declare dso_local i32 @pskb_trim(%struct.sk_buff.0*, i64) #2

declare dso_local i32 @eth_type_trans(%struct.sk_buff.0*, i32) #2

declare dso_local i32 @netif_rx(%struct.sk_buff.0*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
