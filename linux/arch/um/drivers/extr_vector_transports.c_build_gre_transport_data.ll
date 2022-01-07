; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_build_gre_transport_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_transports.c_build_gre_transport_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_private = type { i32, i32, i32, i32*, i32*, %struct.uml_gre_data* }
%struct.uml_gre_data = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GRE_IRB = common dso_local global i32 0, align 4
@gre_form_header = common dso_local global i32 0, align 4
@gre_verify_header = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"v6\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rx_key\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"tx_key\00", align 1
@GRE_MODE_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@GRE_MODE_SEQUENCE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"pin_sequence\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vector_private*)* @build_gre_transport_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_gre_transport_data(%struct.vector_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vector_private*, align 8
  %4 = alloca %struct.uml_gre_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vector_private* %0, %struct.vector_private** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.uml_gre_data* @kmalloc(i32 56, i32 %8)
  %10 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %11 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %10, i32 0, i32 5
  store %struct.uml_gre_data* %9, %struct.uml_gre_data** %11, align 8
  %12 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %13 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %12, i32 0, i32 5
  %14 = load %struct.uml_gre_data*, %struct.uml_gre_data** %13, align 8
  %15 = icmp eq %struct.uml_gre_data* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %157

19:                                               ; preds = %1
  %20 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %21 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %20, i32 0, i32 5
  %22 = load %struct.uml_gre_data*, %struct.uml_gre_data** %21, align 8
  store %struct.uml_gre_data* %22, %struct.uml_gre_data** %4, align 8
  %23 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %24 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load i32, i32* @GRE_IRB, align 4
  %26 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %27 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %30 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %29, i32 0, i32 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %33 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %32, i32 0, i32 4
  store i32* @gre_form_header, i32** %33, align 8
  %34 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %35 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %34, i32 0, i32 3
  store i32* @gre_verify_header, i32** %35, align 8
  %36 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %37 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %36, i32 0, i32 0
  store i32 4, i32* %37, align 8
  %38 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %39 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %38, i32 0, i32 1
  store i32 4, i32* %39, align 4
  %40 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %41 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %40, i32 0, i32 2
  store i32 4, i32* %41, align 8
  %42 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %43 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %42, i32 0, i32 3
  store i32 4, i32* %43, align 4
  %44 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %45 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %44, i32 0, i32 4
  store i32 0, i32* %45, align 8
  %46 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %47 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @get_uint_param(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %5)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %19
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %56 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %55, i32 0, i32 4
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %19
  %59 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %60 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %59, i32 0, i32 5
  store i32 0, i32* %60, align 4
  %61 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %62 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @get_uint_param(i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %101

66:                                               ; preds = %58
  %67 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %68 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @get_uint_param(i32 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %66
  %73 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %74 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %73, i32 0, i32 5
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* @GRE_MODE_KEY, align 4
  %76 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %77 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %76, i32 0, i32 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %75
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i8* @cpu_to_be32(i32 %81)
  %83 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %84 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %83, i32 0, i32 10
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i8* @cpu_to_be32(i32 %85)
  %87 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %88 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %87, i32 0, i32 9
  store i8* %86, i8** %88, align 8
  %89 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %90 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 4
  store i32 %92, i32* %90, align 8
  %93 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %94 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 4
  store i32 %96, i32* %94, align 8
  br label %100

97:                                               ; preds = %66
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %157

100:                                              ; preds = %72
  br label %101

101:                                              ; preds = %100, %58
  %102 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %103 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %105 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @get_uint_param(i32 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %139

109:                                              ; preds = %101
  %110 = load i32, i32* %5, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %138

112:                                              ; preds = %109
  %113 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %114 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 4
  store i32 %116, i32* %114, align 8
  %117 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %118 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %117, i32 0, i32 6
  store i32 1, i32* %118, align 8
  %119 = load i32, i32* @GRE_MODE_SEQUENCE, align 4
  %120 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %121 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %120, i32 0, i32 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %119
  store i32 %124, i32* %122, align 8
  %125 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %126 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @get_uint_param(i32 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %5)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %112
  %131 = load i32, i32* %5, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %135 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %134, i32 0, i32 7
  store i32 1, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %130
  br label %137

137:                                              ; preds = %136, %112
  br label %138

138:                                              ; preds = %137, %109
  br label %139

139:                                              ; preds = %138, %101
  %140 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %141 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %144 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.uml_gre_data*, %struct.uml_gre_data** %4, align 8
  %146 = getelementptr inbounds %struct.uml_gre_data, %struct.uml_gre_data* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %139
  %150 = load %struct.vector_private*, %struct.vector_private** %3, align 8
  %151 = getelementptr inbounds %struct.vector_private, %struct.vector_private* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 %153, 4
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %151, align 4
  br label %156

156:                                              ; preds = %149, %139
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %156, %97, %16
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.uml_gre_data* @kmalloc(i32, i32) #1

declare dso_local i64 @get_uint_param(i32, i8*, i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
