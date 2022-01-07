; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec_file.c_arch_kexec_apply_relocations_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_machine_kexec_file.c_arch_kexec_apply_relocations_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.purgatory_info = type { %struct.TYPE_10__*, i8*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_13__ = type { i64, i32, i64 }
%struct.TYPE_11__ = type { i64, i64 }

@SHN_UNDEF = common dso_local global i64 0, align 8
@ENOEXEC = common dso_local global i32 0, align 4
@SHN_COMMON = common dso_local global i64 0, align 8
@SHN_ABS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_kexec_apply_relocations_add(%struct.purgatory_info* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.purgatory_info*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.purgatory_info* %0, %struct.purgatory_info** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %17 = load %struct.purgatory_info*, %struct.purgatory_info** %6, align 8
  %18 = getelementptr inbounds %struct.purgatory_info, %struct.purgatory_info* %17, i32 0, i32 2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = bitcast %struct.TYPE_9__* %19 to i8*
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %20, i64 %24
  %26 = bitcast i8* %25 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %162, %4
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 24
  %35 = icmp ult i64 %29, %34
  br i1 %35, label %36, label %165

36:                                               ; preds = %27
  %37 = load %struct.purgatory_info*, %struct.purgatory_info** %6, align 8
  %38 = getelementptr inbounds %struct.purgatory_info, %struct.purgatory_info* %37, i32 0, i32 2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = bitcast %struct.TYPE_9__* %39 to i8*
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, i8* %40, i64 %44
  %46 = bitcast i8* %45 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %13, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ELF64_R_SYM(i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i64 %55
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %13, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SHN_UNDEF, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %36
  %63 = load i32, i32* @ENOEXEC, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %166

65:                                               ; preds = %36
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SHN_COMMON, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @ENOEXEC, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %166

74:                                               ; preds = %65
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.purgatory_info*, %struct.purgatory_info** %6, align 8
  %79 = getelementptr inbounds %struct.purgatory_info, %struct.purgatory_info* %78, i32 0, i32 2
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp uge i64 %77, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %74
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SHN_ABS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @ENOEXEC, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %166

93:                                               ; preds = %84, %74
  %94 = load %struct.purgatory_info*, %struct.purgatory_info** %6, align 8
  %95 = getelementptr inbounds %struct.purgatory_info, %struct.purgatory_info* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %16, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %16, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr i8, i8* %100, i64 %101
  store i8* %102, i8** %16, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i8*, i8** %16, align 8
  %110 = getelementptr i8, i8* %109, i64 %108
  store i8* %110, i8** %16, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %15, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @SHN_ABS, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %93
  %120 = load %struct.purgatory_info*, %struct.purgatory_info** %6, align 8
  %121 = getelementptr inbounds %struct.purgatory_info, %struct.purgatory_info* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %15, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %15, align 8
  br label %131

131:                                              ; preds = %119, %93
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %15, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %15, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %142, %148
  store i64 %149, i64* %14, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @ELF64_R_TYPE(i32 %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i8*, i8** %16, align 8
  %159 = load i64, i64* %15, align 8
  %160 = load i64, i64* %14, align 8
  %161 = call i32 @arch_kexec_do_relocs(i32 %157, i8* %158, i64 %159, i64 %160)
  br label %162

162:                                              ; preds = %131
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %27

165:                                              ; preds = %27
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %165, %90, %71, %62
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @ELF64_R_SYM(i32) #1

declare dso_local i32 @ELF64_R_TYPE(i32) #1

declare dso_local i32 @arch_kexec_do_relocs(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
