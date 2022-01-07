; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.nfit_table_prev = type { i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@acpi_nfit_unregister = common dso_local global i32 0, align 4
@acpi_desc_lock = common dso_local global i32 0, align 4
@acpi_descs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"nfit table parsing error: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_nfit_init(%struct.acpi_nfit_desc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_nfit_desc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.nfit_table_prev, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.acpi_nfit_desc* %0, %struct.acpi_nfit_desc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %13 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %12, i32 0, i32 10
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %16 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %57, label %19

19:                                               ; preds = %3
  %20 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %21 = call i32 @acpi_nfit_init_dsms(%struct.acpi_nfit_desc* %20)
  %22 = load %struct.device*, %struct.device** %8, align 8
  %23 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %24 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %23, i32 0, i32 9
  %25 = call i32 @nvdimm_bus_register(%struct.device* %22, i32* %24)
  %26 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %27 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 8
  %28 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %29 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %172

35:                                               ; preds = %19
  %36 = load %struct.device*, %struct.device** %8, align 8
  %37 = load i32, i32* @acpi_nfit_unregister, align 4
  %38 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %39 = call i32 @devm_add_action_or_reset(%struct.device* %36, i32 %37, %struct.acpi_nfit_desc* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %172

44:                                               ; preds = %35
  %45 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %46 = call i32 @acpi_nfit_desc_init_scrub_attr(%struct.acpi_nfit_desc* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %172

51:                                               ; preds = %44
  %52 = call i32 @mutex_lock(i32* @acpi_desc_lock)
  %53 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %54 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %53, i32 0, i32 7
  %55 = call i32 @list_add_tail(i32* %54, i32* @acpi_descs)
  %56 = call i32 @mutex_unlock(i32* @acpi_desc_lock)
  br label %57

57:                                               ; preds = %51, %3
  %58 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %59 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %58, i32 0, i32 0
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %9, i32 0, i32 5
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %9, i32 0, i32 4
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %9, i32 0, i32 3
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %9, i32 0, i32 2
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %9, i32 0, i32 1
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %9, i32 0, i32 0
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %9, i32 0, i32 5
  %74 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %75 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %74, i32 0, i32 6
  %76 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %77 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @list_cut_position(i32* %73, %struct.TYPE_2__* %75, i32 %79)
  %81 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %9, i32 0, i32 4
  %82 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %83 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %82, i32 0, i32 5
  %84 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %85 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @list_cut_position(i32* %81, %struct.TYPE_2__* %83, i32 %87)
  %89 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %9, i32 0, i32 3
  %90 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %91 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %90, i32 0, i32 4
  %92 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %93 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @list_cut_position(i32* %89, %struct.TYPE_2__* %91, i32 %95)
  %97 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %9, i32 0, i32 2
  %98 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %99 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %98, i32 0, i32 3
  %100 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %101 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @list_cut_position(i32* %97, %struct.TYPE_2__* %99, i32 %103)
  %105 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %9, i32 0, i32 1
  %106 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %107 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %106, i32 0, i32 2
  %108 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %109 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @list_cut_position(i32* %105, %struct.TYPE_2__* %107, i32 %111)
  %113 = getelementptr inbounds %struct.nfit_table_prev, %struct.nfit_table_prev* %9, i32 0, i32 0
  %114 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %115 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %114, i32 0, i32 1
  %116 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %117 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @list_cut_position(i32* %113, %struct.TYPE_2__* %115, i32 %119)
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr i8, i8* %121, i64 %123
  store i8* %124, i8** %10, align 8
  br label %125

125:                                              ; preds = %130, %57
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @IS_ERR_OR_NULL(i8* %126)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i8* @add_table(%struct.acpi_nfit_desc* %131, %struct.nfit_table_prev* %9, i8* %132, i8* %133)
  store i8* %134, i8** %6, align 8
  br label %125

135:                                              ; preds = %125
  %136 = load i8*, i8** %6, align 8
  %137 = call i64 @IS_ERR(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load %struct.device*, %struct.device** %8, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @PTR_ERR(i8* %141)
  %143 = call i32 @dev_dbg(%struct.device* %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %142)
  %144 = load i8*, i8** %6, align 8
  %145 = call i32 @PTR_ERR(i8* %144)
  store i32 %145, i32* %11, align 4
  br label %167

146:                                              ; preds = %135
  %147 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %148 = call i32 @acpi_nfit_check_deletions(%struct.acpi_nfit_desc* %147, %struct.nfit_table_prev* %9)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %167

152:                                              ; preds = %146
  %153 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %154 = call i32 @nfit_mem_init(%struct.acpi_nfit_desc* %153)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %167

158:                                              ; preds = %152
  %159 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %160 = call i32 @acpi_nfit_register_dimms(%struct.acpi_nfit_desc* %159)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %167

164:                                              ; preds = %158
  %165 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %166 = call i32 @acpi_nfit_register_regions(%struct.acpi_nfit_desc* %165)
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %164, %163, %157, %151, %139
  %168 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %5, align 8
  %169 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %168, i32 0, i32 0
  %170 = call i32 @mutex_unlock(i32* %169)
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %167, %49, %42, %32
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @acpi_nfit_init_dsms(%struct.acpi_nfit_desc*) #1

declare dso_local i32 @nvdimm_bus_register(%struct.device*, i32*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.acpi_nfit_desc*) #1

declare dso_local i32 @acpi_nfit_desc_init_scrub_attr(%struct.acpi_nfit_desc*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_cut_position(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i8* @add_table(%struct.acpi_nfit_desc*, %struct.nfit_table_prev*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @acpi_nfit_check_deletions(%struct.acpi_nfit_desc*, %struct.nfit_table_prev*) #1

declare dso_local i32 @nfit_mem_init(%struct.acpi_nfit_desc*) #1

declare dso_local i32 @acpi_nfit_register_dimms(%struct.acpi_nfit_desc*) #1

declare dso_local i32 @acpi_nfit_register_regions(%struct.acpi_nfit_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
