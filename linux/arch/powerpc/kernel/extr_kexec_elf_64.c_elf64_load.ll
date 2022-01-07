; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kexec_elf_64.c_elf64_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kexec_elf_64.c_elf64_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }
%struct.elfhdr = type { i32 }
%struct.kexec_elf_info = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kexec_buf = type { i32, i8*, i8*, i64, i64, i8*, i32, i32, %struct.kimage* }

@ppc64_rma_size = common dso_local global i32 0, align 4
@KEXEC_BUF_MEM_UNKNOWN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Loaded the kernel at 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Loading purgatory failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Loaded purgatory at 0x%lx\0A\00", align 1
@PAGE_SIZE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Loaded initrd at 0x%lx\0A\00", align 1
@initial_boot_params = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Not enough memory for the device tree.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Error setting up the new device tree.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Loaded device tree at 0x%lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Error setting up the purgatory.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kimage*, i8*, i64, i8*, i64, i8*, i64)* @elf64_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @elf64_load(%struct.kimage* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.kimage*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.elfhdr, align 4
  %23 = alloca %struct.kexec_elf_info, align 8
  %24 = alloca %struct.kexec_buf, align 8
  %25 = alloca %struct.kexec_buf, align 8
  store %struct.kimage* %0, %struct.kimage** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  store i64 0, i64* %18, align 8
  %26 = bitcast %struct.kexec_buf* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 64, i1 false)
  %27 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 6
  %28 = load i32, i32* @ppc64_rma_size, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 8
  %30 = load %struct.kimage*, %struct.kimage** %8, align 8
  store %struct.kimage* %30, %struct.kimage** %29, align 8
  %31 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %25, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %25, i32 0, i32 1
  %33 = load i8*, i8** @KEXEC_BUF_MEM_UNKNOWN, align 8
  store i8* %33, i8** %32, align 8
  %34 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %25, i32 0, i32 2
  store i8* null, i8** %34, align 8
  %35 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %25, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %25, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %25, i32 0, i32 5
  store i8* null, i8** %37, align 8
  %38 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %25, i32 0, i32 6
  %39 = load i32, i32* @ppc64_rma_size, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %25, i32 0, i32 7
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %25, i32 0, i32 8
  %42 = load %struct.kimage*, %struct.kimage** %8, align 8
  store %struct.kimage* %42, %struct.kimage** %41, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @kexec_build_elf_info(i8* %43, i64 %44, %struct.elfhdr* %22, %struct.kexec_elf_info* %23)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %7
  br label %170

49:                                               ; preds = %7
  %50 = load %struct.kimage*, %struct.kimage** %8, align 8
  %51 = call i32 @kexec_elf_load(%struct.kimage* %50, %struct.elfhdr* %22, %struct.kexec_elf_info* %23, %struct.kexec_buf* %24, i64* %17)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %170

55:                                               ; preds = %49
  %56 = load i64, i64* %17, align 8
  %57 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load %struct.kimage*, %struct.kimage** %8, align 8
  %59 = call i32 @kexec_load_purgatory(%struct.kimage* %58, %struct.kexec_buf* %25)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %170

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %25, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = load i8*, i8** %11, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %92

71:                                               ; preds = %64
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 2
  store i8* %72, i8** %73, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 4
  store i64 %74, i64* %75, align 8
  %76 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load i8*, i8** @PAGE_SIZE, align 8
  %78 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 5
  store i8* %77, i8** %78, align 8
  %79 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load i8*, i8** @KEXEC_BUF_MEM_UNKNOWN, align 8
  %81 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 1
  store i8* %80, i8** %81, align 8
  %82 = call i32 @kexec_add_buffer(%struct.kexec_buf* %24)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  br label %170

86:                                               ; preds = %71
  %87 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %88 to i64
  store i64 %89, i64* %18, align 8
  %90 = load i64, i64* %18, align 8
  %91 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %90)
  br label %92

92:                                               ; preds = %86, %64
  %93 = load i32, i32* @initial_boot_params, align 4
  %94 = call i32 @fdt_totalsize(i32 %93)
  %95 = mul nsw i32 %94, 2
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i8* @kmalloc(i32 %96, i32 %97)
  store i8* %98, i8** %20, align 8
  %99 = load i8*, i8** %20, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %92
  %102 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %15, align 4
  br label %170

105:                                              ; preds = %92
  %106 = load i32, i32* @initial_boot_params, align 4
  %107 = load i8*, i8** %20, align 8
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @fdt_open_into(i32 %106, i8* %107, i32 %108)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %15, align 4
  br label %170

116:                                              ; preds = %105
  %117 = load %struct.kimage*, %struct.kimage** %8, align 8
  %118 = load i8*, i8** %20, align 8
  %119 = load i64, i64* %18, align 8
  %120 = load i64, i64* %12, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = call i32 @setup_new_fdt(%struct.kimage* %117, i8* %118, i64 %119, i64 %120, i8* %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %170

126:                                              ; preds = %116
  %127 = load i8*, i8** %20, align 8
  %128 = call i32 @fdt_pack(i8* %127)
  %129 = load i8*, i8** %20, align 8
  %130 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 2
  store i8* %129, i8** %130, align 8
  %131 = load i32, i32* %16, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 4
  store i64 %132, i64* %133, align 8
  %134 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  %135 = load i8*, i8** @PAGE_SIZE, align 8
  %136 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 5
  store i8* %135, i8** %136, align 8
  %137 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load i8*, i8** @KEXEC_BUF_MEM_UNKNOWN, align 8
  %139 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 1
  store i8* %138, i8** %139, align 8
  %140 = call i32 @kexec_add_buffer(%struct.kexec_buf* %24)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %126
  br label %170

144:                                              ; preds = %126
  %145 = getelementptr inbounds %struct.kexec_buf, %struct.kexec_buf* %24, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = ptrtoint i8* %146 to i64
  store i64 %147, i64* %19, align 8
  %148 = load i64, i64* %19, align 8
  %149 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %148)
  %150 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %23, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds %struct.kexec_elf_info, %struct.kexec_elf_info* %23, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr i8, i8* %151, i64 %157
  store i8* %158, i8** %21, align 8
  %159 = load %struct.kimage*, %struct.kimage** %8, align 8
  %160 = load i8*, i8** %21, align 8
  %161 = load i8*, i8** %20, align 8
  %162 = load i64, i64* %17, align 8
  %163 = load i64, i64* %19, align 8
  %164 = call i32 @setup_purgatory(%struct.kimage* %159, i8* %160, i8* %161, i64 %162, i64 %163)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %144
  %168 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %144
  br label %170

170:                                              ; preds = %169, %143, %125, %112, %101, %85, %62, %54, %48
  %171 = call i32 @kexec_free_elf_info(%struct.kexec_elf_info* %23)
  %172 = load i32, i32* %15, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %15, align 4
  %176 = call i8* @ERR_PTR(i32 %175)
  br label %179

177:                                              ; preds = %170
  %178 = load i8*, i8** %20, align 8
  br label %179

179:                                              ; preds = %177, %174
  %180 = phi i8* [ %176, %174 ], [ %178, %177 ]
  ret i8* %180
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @kexec_build_elf_info(i8*, i64, %struct.elfhdr*, %struct.kexec_elf_info*) #2

declare dso_local i32 @kexec_elf_load(%struct.kimage*, %struct.elfhdr*, %struct.kexec_elf_info*, %struct.kexec_buf*, i64*) #2

declare dso_local i32 @pr_debug(i8*, i64) #2

declare dso_local i32 @kexec_load_purgatory(%struct.kimage*, %struct.kexec_buf*) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @kexec_add_buffer(%struct.kexec_buf*) #2

declare dso_local i32 @fdt_totalsize(i32) #2

declare dso_local i8* @kmalloc(i32, i32) #2

declare dso_local i32 @fdt_open_into(i32, i8*, i32) #2

declare dso_local i32 @setup_new_fdt(%struct.kimage*, i8*, i64, i64, i8*) #2

declare dso_local i32 @fdt_pack(i8*) #2

declare dso_local i32 @setup_purgatory(%struct.kimage*, i8*, i8*, i64, i64) #2

declare dso_local i32 @kexec_free_elf_info(%struct.kexec_elf_info*) #2

declare dso_local i8* @ERR_PTR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
