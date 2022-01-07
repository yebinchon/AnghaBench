; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_gre_form_header.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_gre_form_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.vector_private = type { %struct.uml_gre_data* }
%struct.uml_gre_data = type { i32, i32, i32, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sk_buff*, %struct.vector_private*)* @gre_form_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gre_form_header(i32* %0, %struct.sk_buff* %1, %struct.vector_private* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.vector_private*, align 8
  %7 = alloca %struct.uml_gre_data*, align 8
  %8 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.vector_private* %2, %struct.vector_private** %6, align 8
  %9 = load %struct.vector_private*, %struct.vector_private** %6, align 8
  %10 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %9, i32 0, i32 0
  %11 = load %struct.uml_gre_data*, %struct.uml_gre_data** %10, align 8
  store %struct.uml_gre_data* %11, %struct.uml_gre_data** %7, align 8
  %12 = load %struct.uml_gre_data*, %struct.uml_gre_data** %7, align 8
  %13 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %12, i32 0, i32 7
  %14 = bitcast i32* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = bitcast i32* %16 to i64*
  store i64 %15, i64* %17, align 8
  %18 = load %struct.uml_gre_data*, %struct.uml_gre_data** %7, align 8
  %19 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load %struct.uml_gre_data*, %struct.uml_gre_data** %7, align 8
  %24 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.uml_gre_data*, %struct.uml_gre_data** %7, align 8
  %28 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = bitcast i32* %31 to i64*
  store i64 %25, i64* %32, align 8
  br label %33

33:                                               ; preds = %22, %3
  %34 = load %struct.uml_gre_data*, %struct.uml_gre_data** %7, align 8
  %35 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.uml_gre_data*, %struct.uml_gre_data** %7, align 8
  %41 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = bitcast i32* %44 to i64*
  store i64* %45, i64** %8, align 8
  %46 = load %struct.uml_gre_data*, %struct.uml_gre_data** %7, align 8
  %47 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i64*, i64** %8, align 8
  store i64 0, i64* %51, align 8
  br label %59

52:                                               ; preds = %38
  %53 = load %struct.uml_gre_data*, %struct.uml_gre_data** %7, align 8
  %54 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = call i64 @cpu_to_be32(i32 %56)
  %58 = load i64*, i64** %8, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %52, %50
  br label %60

60:                                               ; preds = %59, %33
  ret i32 0
}

declare dso_local i64 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
