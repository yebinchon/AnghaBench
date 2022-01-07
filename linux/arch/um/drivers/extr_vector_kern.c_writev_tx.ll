; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_writev_tx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_writev_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_private = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.iovec = type { i32 }

@MAX_IOV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_private*, %struct.sk_buff*)* @writev_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writev_tx(%struct.vector_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vector_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vector_private* %0, %struct.vector_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @MAX_IOV_SIZE, align 4
  %12 = add nsw i32 3, %11
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.iovec, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %17 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i64 0
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 16
  %21 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @prep_msg(%struct.vector_private* %21, %struct.sk_buff* %22, %struct.iovec* %15)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %81

27:                                               ; preds = %2
  %28 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %29 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @uml_vector_writev(i32 %32, %struct.iovec* %15, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %81

38:                                               ; preds = %27
  %39 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %40 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = call i32 @netif_trans_update(%struct.TYPE_7__* %41)
  %43 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %44 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = call i32 @netif_wake_queue(%struct.TYPE_7__* %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %38
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %54 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %52
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %63 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %77

69:                                               ; preds = %38
  %70 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %71 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %69, %49
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @consume_skb(%struct.sk_buff* %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %98

81:                                               ; preds = %37, %26
  %82 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %83 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call i32 @consume_skb(%struct.sk_buff* %89)
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %81
  %94 = load %struct.vector_private*, %struct.vector_private** %4, align 8
  %95 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %81
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %98

98:                                               ; preds = %96, %77
  %99 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @prep_msg(%struct.vector_private*, %struct.sk_buff*, %struct.iovec*) #2

declare dso_local i32 @uml_vector_writev(i32, %struct.iovec*, i32) #2

declare dso_local i32 @netif_trans_update(%struct.TYPE_7__*) #2

declare dso_local i32 @netif_wake_queue(%struct.TYPE_7__*) #2

declare dso_local i32 @consume_skb(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
