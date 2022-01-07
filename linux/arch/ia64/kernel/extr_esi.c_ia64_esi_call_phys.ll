; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_esi.c_ia64_esi_call_phys.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_esi.c_ia64_esi_call_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ia64_sal_retval = type { i32 }
%struct.ia64_fpreg = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.pdesc = type { i8*, i8* }

@esi_systab = common dso_local global %struct.TYPE_4__* null, align 8
@ESI_DESC_ENTRY_POINT = common dso_local global i8 0, align 1
@sal_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_esi_call_phys(i32 %0, %struct.ia64_sal_retval* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ia64_sal_retval*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [6 x %struct.ia64_fpreg], align 16
  %23 = alloca i64, align 8
  %24 = alloca [8 x i32], align 16
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_3__*, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.pdesc, align 8
  %30 = alloca %struct.ia64_sal_retval, align 4
  store i32 %0, i32* %12, align 4
  store %struct.ia64_sal_retval* %1, %struct.ia64_sal_retval** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @esi_systab, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %10
  store i32 -1, i32* %11, align 4
  br label %115

34:                                               ; preds = %10
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @esi_systab, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 1
  %37 = bitcast %struct.TYPE_4__* %36 to i8*
  store i8* %37, i8** %25, align 8
  store i32 0, i32* %26, align 4
  br label %38

38:                                               ; preds = %111, %34
  %39 = load i32, i32* %26, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @esi_systab, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %114

44:                                               ; preds = %38
  %45 = load i8*, i8** %25, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i8, i8* @ESI_DESC_ENTRY_POINT, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %104

51:                                               ; preds = %44
  %52 = load i8*, i8** %25, align 8
  %53 = bitcast i8* %52 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %27, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @efi_guidcmp(i32 %54, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %103, label %60

60:                                               ; preds = %51
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = getelementptr inbounds %struct.pdesc, %struct.pdesc* %29, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = getelementptr inbounds %struct.pdesc, %struct.pdesc* %29, i32 0, i32 0
  store i8* %69, i8** %70, align 8
  %71 = ptrtoint %struct.pdesc* %29 to i64
  store i64 %71, i64* %28, align 8
  %72 = load i32, i32* %14, align 4
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  store i32 %72, i32* %73, align 16
  %74 = load i32, i32* %15, align 4
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 1
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %16, align 4
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 2
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* %17, align 4
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 3
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %18, align 4
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 4
  store i32 %80, i32* %81, align 16
  %82 = load i32, i32* %19, align 4
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 5
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %20, align 4
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 6
  store i32 %84, i32* %85, align 8
  %86 = load i32, i32* %21, align 4
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 7
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds [6 x %struct.ia64_fpreg], [6 x %struct.ia64_fpreg]* %22, i64 0, i64 0
  %89 = call i32 @ia64_save_scratch_fpregs(%struct.ia64_fpreg* %88)
  %90 = load i64, i64* %23, align 8
  %91 = call i32 @spin_lock_irqsave(i32* @sal_lock, i64 %90)
  %92 = load %struct.ia64_sal_retval*, %struct.ia64_sal_retval** %13, align 8
  %93 = load i64, i64* %28, align 8
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  %95 = call i32 @esi_call_phys(i64 %93, i32* %94)
  %96 = getelementptr inbounds %struct.ia64_sal_retval, %struct.ia64_sal_retval* %30, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = bitcast %struct.ia64_sal_retval* %92 to i8*
  %98 = bitcast %struct.ia64_sal_retval* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 4 %98, i64 4, i1 false)
  %99 = load i64, i64* %23, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32* @sal_lock, i64 %99)
  %101 = getelementptr inbounds [6 x %struct.ia64_fpreg], [6 x %struct.ia64_fpreg]* %22, i64 0, i64 0
  %102 = call i32 @ia64_load_scratch_fpregs(%struct.ia64_fpreg* %101)
  store i32 0, i32* %11, align 4
  br label %115

103:                                              ; preds = %51
  br label %104

104:                                              ; preds = %103, %44
  %105 = load i8*, i8** %25, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @ESI_DESC_SIZE(i8 signext %106)
  %108 = load i8*, i8** %25, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %25, align 8
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %26, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %26, align 4
  br label %38

114:                                              ; preds = %38
  store i32 -1, i32* %11, align 4
  br label %115

115:                                              ; preds = %114, %60, %33
  %116 = load i32, i32* %11, align 4
  ret i32 %116
}

declare dso_local i32 @efi_guidcmp(i32, i32) #1

declare dso_local i32 @ia64_save_scratch_fpregs(%struct.ia64_fpreg*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @esi_call_phys(i64, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ia64_load_scratch_fpregs(%struct.ia64_fpreg*) #1

declare dso_local i32 @ESI_DESC_SIZE(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
