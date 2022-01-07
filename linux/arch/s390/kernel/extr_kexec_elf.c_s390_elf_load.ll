; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kexec_elf.c_s390_elf_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_kexec_elf.c_s390_elf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32 }
%struct.TYPE_5__ = type { i64, i64*, i64, i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64, i32 }

@ET_EXEC = common dso_local global i64 0, align 8
@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS64 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PT_INTERP = common dso_local global i64 0, align 8
@kexec_file_add_kernel_elf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kimage*, i8*, i64, i8*, i64, i8*, i64)* @s390_elf_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @s390_elf_load(%struct.kimage* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.kimage*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %16, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ET_EXEC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %40, label %27

27:                                               ; preds = %7
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @EI_CLASS, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ELFCLASS64, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %38 = call i32 @elf_check_arch(%struct.TYPE_5__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36, %27, %7
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i8* @ERR_PTR(i32 %42)
  store i8* %43, i8** %8, align 8
  br label %151

44:                                               ; preds = %36
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %53, 32
  br i1 %54, label %55, label %59

55:                                               ; preds = %49, %44
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  %58 = call i8* @ERR_PTR(i32 %57)
  store i8* %58, i8** %8, align 8
  br label %151

59:                                               ; preds = %49
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %62, %65
  store i64 %66, i64* %18, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = mul i64 %70, %73
  %75 = load i64, i64* %18, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %18, align 8
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %59
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  %83 = call i8* @ERR_PTR(i32 %82)
  store i8* %83, i8** %8, align 8
  br label %151

84:                                               ; preds = %59
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %86 = bitcast %struct.TYPE_5__* %85 to i8*
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr i8, i8* %86, i64 %89
  %91 = bitcast i8* %90 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %17, align 8
  %92 = load i64, i64* %18, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @ALIGN(i64 %92, i32 %95)
  store i64 %96, i64* %18, align 8
  store i32 0, i32* %19, align 4
  br label %97

97:                                               ; preds = %134, %84
  %98 = load i32, i32* %19, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ult i64 %99, %102
  br i1 %103, label %104, label %139

104:                                              ; preds = %97
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PT_INTERP, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  %113 = call i8* @ERR_PTR(i32 %112)
  store i8* %113, i8** %8, align 8
  br label %151

114:                                              ; preds = %104
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %11, align 8
  %119 = icmp ugt i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  %123 = call i8* @ERR_PTR(i32 %122)
  store i8* %123, i8** %8, align 8
  br label %151

124:                                              ; preds = %114
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @ALIGN(i64 %127, i32 %130)
  %132 = load i64, i64* %18, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %18, align 8
  br label %134

134:                                              ; preds = %124
  %135 = load i32, i32* %19, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %19, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 1
  store %struct.TYPE_4__* %138, %struct.TYPE_4__** %17, align 8
  br label %97

139:                                              ; preds = %97
  %140 = load i64, i64* %18, align 8
  %141 = load i64, i64* %11, align 8
  %142 = icmp ugt i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  %146 = call i8* @ERR_PTR(i32 %145)
  store i8* %146, i8** %8, align 8
  br label %151

147:                                              ; preds = %139
  %148 = load %struct.kimage*, %struct.kimage** %9, align 8
  %149 = load i32, i32* @kexec_file_add_kernel_elf, align 4
  %150 = call i8* @kexec_file_add_components(%struct.kimage* %148, i32 %149)
  store i8* %150, i8** %8, align 8
  br label %151

151:                                              ; preds = %147, %143, %120, %110, %80, %55, %40
  %152 = load i8*, i8** %8, align 8
  ret i8* %152
}

declare dso_local i32 @elf_check_arch(%struct.TYPE_5__*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i8* @kexec_file_add_components(%struct.kimage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
