; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_create_elfcore_headers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_fadump.c_fadump_create_elfcore_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i64, i32, i64* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.elf_phdr = type { i32, i64, i64, i64, i64, i64, i64, i8* }
%struct.elfhdr = type { i32 }

@PT_NOTE = common dso_local global i8* null, align 8
@VMCOREINFO_NOTE_SIZE = common dso_local global i64 0, align 8
@fw_dump = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@crash_mrange_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PT_LOAD = common dso_local global i8* null, align 8
@PF_R = common dso_local global i32 0, align 4
@PF_W = common dso_local global i32 0, align 4
@PF_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @fadump_create_elfcore_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fadump_create_elfcore_headers(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.elf_phdr*, align 8
  %6 = alloca %struct.elfhdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @fadump_init_elfcore_header(i8* %11)
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.elfhdr*
  store %struct.elfhdr* %14, %struct.elfhdr** %6, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %16, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = bitcast i8* %17 to %struct.elf_phdr*
  store %struct.elf_phdr* %18, %struct.elf_phdr** %5, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 64
  store i8* %20, i8** %2, align 8
  %21 = load i8*, i8** @PT_NOTE, align 8
  %22 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %23 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %22, i32 0, i32 7
  store i8* %21, i8** %23, align 8
  %24 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %25 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %27 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %29 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %31 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %33 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %35 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %37 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %39 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load i8*, i8** %2, align 8
  %43 = bitcast i8* %42 to %struct.elf_phdr*
  store %struct.elf_phdr* %43, %struct.elf_phdr** %5, align 8
  %44 = load i8*, i8** %2, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 64
  store i8* %45, i8** %2, align 8
  %46 = load i8*, i8** @PT_NOTE, align 8
  %47 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %48 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %47, i32 0, i32 7
  store i8* %46, i8** %48, align 8
  %49 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %50 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %52 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %54 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = call i32 (...) @paddr_vmcoreinfo_note()
  %56 = call i64 @fadump_relocate(i32 %55)
  %57 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %58 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %60 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %63 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* @VMCOREINFO_NOTE_SIZE, align 8
  %65 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %66 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  %67 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %68 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %67, i32 0, i32 5
  store i64 %64, i64* %68, align 8
  %69 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %70 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %4, align 8
  %73 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fw_dump, i32 0, i32 0), align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %3, align 8
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %162, %1
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @crash_mrange_info, i32 0, i32 0), align 8
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %165

80:                                               ; preds = %76
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @crash_mrange_info, i32 0, i32 1), align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %9, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @crash_mrange_info, i32 0, i32 1), align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %80
  br label %162

96:                                               ; preds = %80
  %97 = load i8*, i8** %2, align 8
  %98 = bitcast i8* %97 to %struct.elf_phdr*
  store %struct.elf_phdr* %98, %struct.elf_phdr** %5, align 8
  %99 = load i8*, i8** %2, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 64
  store i8* %100, i8** %2, align 8
  %101 = load i8*, i8** @PT_LOAD, align 8
  %102 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %103 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %102, i32 0, i32 7
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* @PF_R, align 4
  %105 = load i32, i32* @PF_W, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @PF_X, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %110 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %113 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %112, i32 0, i32 2
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* %3, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %142

117:                                              ; preds = %96
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fw_dump, i32 0, i32 1), align 8
  %119 = load i64, i64* %4, align 8
  %120 = add i64 %118, %119
  %121 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %122 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %121, i32 0, i32 2
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fw_dump, i32 0, i32 2), align 8
  %125 = sub nsw i32 %124, 1
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %141

127:                                              ; preds = %117
  %128 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fw_dump, i32 0, i32 3), align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %4, align 8
  %134 = add i64 %133, %132
  store i64 %134, i64* %4, align 8
  %135 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fw_dump, i32 0, i32 0), align 8
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %135, i64 %138
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %3, align 8
  br label %141

141:                                              ; preds = %127, %117
  br label %142

142:                                              ; preds = %141, %96
  %143 = load i64, i64* %9, align 8
  %144 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %145 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %144, i32 0, i32 3
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* %9, align 8
  %147 = call i64 @__va(i64 %146)
  %148 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %149 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* %10, align 8
  %151 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %152 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %151, i32 0, i32 4
  store i64 %150, i64* %152, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %155 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %154, i32 0, i32 5
  store i64 %153, i64* %155, align 8
  %156 = load %struct.elf_phdr*, %struct.elf_phdr** %5, align 8
  %157 = getelementptr inbounds %struct.elf_phdr, %struct.elf_phdr* %156, i32 0, i32 6
  store i64 0, i64* %157, align 8
  %158 = load %struct.elfhdr*, %struct.elfhdr** %6, align 8
  %159 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %142, %95
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %76

165:                                              ; preds = %76
  ret i32 0
}

declare dso_local i32 @fadump_init_elfcore_header(i8*) #1

declare dso_local i64 @fadump_relocate(i32) #1

declare dso_local i32 @paddr_vmcoreinfo_note(...) #1

declare dso_local i64 @__va(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
