; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_init_vmcs_shadow_fields.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_init_vmcs_shadow_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_vmcs_field = type { i32, i32 }

@vmx_vmread_bitmap = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@vmx_vmwrite_bitmap = common dso_local global i32 0, align 4
@max_shadow_read_only_fields = common dso_local global i32 0, align 4
@shadow_read_only_fields = common dso_local global %struct.shadow_vmcs_field* null, align 8
@VMCS_FIELD_WIDTH_U64 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Missing field from shadow_read_only_field %x\0A\00", align 1
@max_shadow_read_write_fields = common dso_local global i32 0, align 4
@shadow_read_write_fields = common dso_local global %struct.shadow_vmcs_field* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Missing field from shadow_read_write_field %x\0A\00", align 1
@GUEST_ES_AR_BYTES = common dso_local global i32 0, align 4
@GUEST_TR_AR_BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Update vmcs12_write_any() to drop reserved bits from AR_BYTES\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_vmcs_shadow_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_vmcs_shadow_fields() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.shadow_vmcs_field, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.shadow_vmcs_field, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @vmx_vmread_bitmap, align 4
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = call i32 @memset(i32 %7, i32 255, i32 %8)
  %10 = load i32, i32* @vmx_vmwrite_bitmap, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = call i32 @memset(i32 %10, i32 255, i32 %11)
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %71, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @max_shadow_read_only_fields, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %74

17:                                               ; preds = %13
  %18 = load %struct.shadow_vmcs_field*, %struct.shadow_vmcs_field** @shadow_read_only_fields, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %18, i64 %20
  %22 = bitcast %struct.shadow_vmcs_field* %3 to i8*
  %23 = bitcast %struct.shadow_vmcs_field* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 8, i1 false)
  %24 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @vmcs_field_width(i32 %26)
  %28 = load i64, i64* @VMCS_FIELD_WIDTH_U64, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %17
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* @max_shadow_read_only_fields, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = load %struct.shadow_vmcs_field*, %struct.shadow_vmcs_field** @shadow_read_only_fields, align 8
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %36, i64 %39
  %41 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %35, %30
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %35, %17
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @vmx_vmread_bitmap, align 4
  %53 = call i32 @clear_bit(i32 %51, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %3, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.shadow_vmcs_field*, %struct.shadow_vmcs_field** @shadow_read_only_fields, align 8
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %64, i64 %67
  %69 = bitcast %struct.shadow_vmcs_field* %68 to i8*
  %70 = bitcast %struct.shadow_vmcs_field* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 8, i1 false)
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %13

74:                                               ; preds = %13
  %75 = load i32, i32* %2, align 4
  store i32 %75, i32* @max_shadow_read_only_fields, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %76

76:                                               ; preds = %166, %74
  %77 = load i32, i32* %1, align 4
  %78 = load i32, i32* @max_shadow_read_write_fields, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %169

80:                                               ; preds = %76
  %81 = load %struct.shadow_vmcs_field*, %struct.shadow_vmcs_field** @shadow_read_write_fields, align 8
  %82 = load i32, i32* %1, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %81, i64 %83
  %85 = bitcast %struct.shadow_vmcs_field* %5 to i8*
  %86 = bitcast %struct.shadow_vmcs_field* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 8, i1 false)
  %87 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %5, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @vmcs_field_width(i32 %89)
  %91 = load i64, i64* @VMCS_FIELD_WIDTH_U64, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %80
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* @max_shadow_read_write_fields, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %109, label %98

98:                                               ; preds = %93
  %99 = load %struct.shadow_vmcs_field*, %struct.shadow_vmcs_field** @shadow_read_write_fields, align 8
  %100 = load i32, i32* %1, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %99, i64 %102
  %104 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %98, %93
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %109, %98, %80
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @GUEST_ES_AR_BYTES, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @GUEST_TR_AR_BYTES, align 4
  %120 = icmp sle i32 %118, %119
  br label %121

121:                                              ; preds = %117, %113
  %122 = phi i1 [ false, %113 ], [ %120, %117 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @WARN_ONCE(i32 %123, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* %6, align 4
  switch i32 %125, label %141 [
    i32 129, label %126
    i32 128, label %131
    i32 130, label %136
  ]

126:                                              ; preds = %121
  %127 = call i32 (...) @cpu_has_vmx_pml()
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  br label %166

130:                                              ; preds = %126
  br label %142

131:                                              ; preds = %121
  %132 = call i32 (...) @cpu_has_vmx_preemption_timer()
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  br label %166

135:                                              ; preds = %131
  br label %142

136:                                              ; preds = %121
  %137 = call i32 (...) @cpu_has_vmx_apicv()
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  br label %166

140:                                              ; preds = %136
  br label %142

141:                                              ; preds = %121
  br label %142

142:                                              ; preds = %141, %140, %135, %130
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @vmx_vmwrite_bitmap, align 4
  %145 = call i32 @clear_bit(i32 %143, i32 %144)
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @vmx_vmread_bitmap, align 4
  %148 = call i32 @clear_bit(i32 %146, i32 %147)
  %149 = load i32, i32* %6, align 4
  %150 = and i32 %149, 1
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %142
  %153 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %5, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 %155, 4
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 4
  br label %158

158:                                              ; preds = %152, %142
  %159 = load %struct.shadow_vmcs_field*, %struct.shadow_vmcs_field** @shadow_read_write_fields, align 8
  %160 = load i32, i32* %2, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %2, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %159, i64 %162
  %164 = bitcast %struct.shadow_vmcs_field* %163 to i8*
  %165 = bitcast %struct.shadow_vmcs_field* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %164, i8* align 4 %165, i64 8, i1 false)
  br label %166

166:                                              ; preds = %158, %139, %134, %129
  %167 = load i32, i32* %1, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %1, align 4
  br label %76

169:                                              ; preds = %76
  %170 = load i32, i32* %2, align 4
  store i32 %170, i32* @max_shadow_read_write_fields, align 4
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vmcs_field_width(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @cpu_has_vmx_pml(...) #1

declare dso_local i32 @cpu_has_vmx_preemption_timer(...) #1

declare dso_local i32 @cpu_has_vmx_apicv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
