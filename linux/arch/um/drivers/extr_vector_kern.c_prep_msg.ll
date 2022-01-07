; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_prep_msg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_prep_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_private = type { i64, %struct.TYPE_3__, i32 (i32, %struct.sk_buff*, %struct.vector_private*)* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type opaque
%struct.sk_buff.0 = type { i64, i64, i32 }
%struct.iovec = type { i64, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@MAX_IOV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_private*, %struct.sk_buff.0*, %struct.iovec*)* @prep_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep_msg(%struct.vector_private* %0, %struct.sk_buff.0* %1, %struct.iovec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vector_private*, align 8
  %6 = alloca %struct.sk_buff.0*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.vector_private* %0, %struct.vector_private** %5, align 8
  store %struct.sk_buff.0* %1, %struct.sk_buff.0** %6, align 8
  store %struct.iovec* %2, %struct.iovec** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %13 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff.0* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MAX_IOV_SIZE, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %21 = call i64 @skb_linearize(%struct.sk_buff.0* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %128

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %3
  %26 = load %struct.vector_private*, %struct.vector_private** %5, align 8
  %27 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load %struct.vector_private*, %struct.vector_private** %5, align 8
  %32 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.iovec*, %struct.iovec** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 %36
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i32 0, i32 0
  store i64 %33, i64* %38, align 8
  %39 = load %struct.vector_private*, %struct.vector_private** %5, align 8
  %40 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %39, i32 0, i32 2
  %41 = load i32 (i32, %struct.sk_buff*, %struct.vector_private*)*, i32 (i32, %struct.sk_buff*, %struct.vector_private*)** %40, align 8
  %42 = load %struct.iovec*, %struct.iovec** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i64 %44
  %46 = getelementptr inbounds %struct.iovec, %struct.iovec* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %49 = bitcast %struct.sk_buff.0* %48 to %struct.sk_buff*
  %50 = load %struct.vector_private*, %struct.vector_private** %5, align 8
  %51 = call i32 %41(i32 %47, %struct.sk_buff* %49, %struct.vector_private* %50)
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %30, %25
  %55 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff.0, %struct.sk_buff.0* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.iovec*, %struct.iovec** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.iovec, %struct.iovec* %58, i64 %60
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %61, i32 0, i32 1
  store i32 %57, i32* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %54
  %66 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %67 = getelementptr inbounds %struct.sk_buff.0, %struct.sk_buff.0* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %70 = getelementptr inbounds %struct.sk_buff.0, %struct.sk_buff.0* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = load %struct.iovec*, %struct.iovec** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.iovec, %struct.iovec* %73, i64 %75
  %77 = getelementptr inbounds %struct.iovec, %struct.iovec* %76, i32 0, i32 0
  store i64 %72, i64* %77, align 8
  %78 = load %struct.vector_private*, %struct.vector_private** %5, align 8
  %79 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %92

83:                                               ; preds = %54
  %84 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %85 = getelementptr inbounds %struct.sk_buff.0, %struct.sk_buff.0* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.iovec*, %struct.iovec** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.iovec, %struct.iovec* %87, i64 %89
  %91 = getelementptr inbounds %struct.iovec, %struct.iovec* %90, i32 0, i32 0
  store i64 %86, i64* %91, align 8
  br label %92

92:                                               ; preds = %83, %65
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %123, %92
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %126

99:                                               ; preds = %95
  %100 = load %struct.sk_buff.0*, %struct.sk_buff.0** %6, align 8
  %101 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff.0* %100)
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32* %106, i32** %11, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @skb_frag_address_safe(i32* %107)
  %109 = load %struct.iovec*, %struct.iovec** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.iovec, %struct.iovec* %109, i64 %111
  %113 = getelementptr inbounds %struct.iovec, %struct.iovec* %112, i32 0, i32 1
  store i32 %108, i32* %113, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = call i64 @skb_frag_size(i32* %114)
  %116 = load %struct.iovec*, %struct.iovec** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.iovec, %struct.iovec* %116, i64 %118
  %120 = getelementptr inbounds %struct.iovec, %struct.iovec* %119, i32 0, i32 0
  store i64 %115, i64* %120, align 8
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %123

123:                                              ; preds = %99
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %95

126:                                              ; preds = %95
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %4, align 4
  br label %129

128:                                              ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %126
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff.0*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff.0*) #1

declare dso_local i32 @skb_frag_address_safe(i32*) #1

declare dso_local i64 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
