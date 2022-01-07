; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_finalize_port_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_finalize_port_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port_operations = type { %struct.ata_port_operations* }

@ata_finalize_port_ops.lock = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port_operations*)* @ata_finalize_port_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_finalize_port_ops(%struct.ata_port_operations* %0) #0 {
  %2 = alloca %struct.ata_port_operations*, align 8
  %3 = alloca %struct.ata_port_operations*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  store %struct.ata_port_operations* %0, %struct.ata_port_operations** %2, align 8
  %8 = load %struct.ata_port_operations*, %struct.ata_port_operations** %2, align 8
  %9 = bitcast %struct.ata_port_operations* %8 to i8**
  store i8** %9, i8*** %4, align 8
  %10 = load %struct.ata_port_operations*, %struct.ata_port_operations** %2, align 8
  %11 = getelementptr inbounds %struct.ata_port_operations, %struct.ata_port_operations* %10, i32 0, i32 0
  %12 = bitcast %struct.ata_port_operations** %11 to i8**
  store i8** %12, i8*** %5, align 8
  %13 = load %struct.ata_port_operations*, %struct.ata_port_operations** %2, align 8
  %14 = icmp ne %struct.ata_port_operations* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.ata_port_operations*, %struct.ata_port_operations** %2, align 8
  %17 = getelementptr inbounds %struct.ata_port_operations, %struct.ata_port_operations* %16, i32 0, i32 0
  %18 = load %struct.ata_port_operations*, %struct.ata_port_operations** %17, align 8
  %19 = icmp ne %struct.ata_port_operations* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %1
  br label %77

21:                                               ; preds = %15
  %22 = call i32 @spin_lock(i32* @ata_finalize_port_ops.lock)
  %23 = load %struct.ata_port_operations*, %struct.ata_port_operations** %2, align 8
  %24 = getelementptr inbounds %struct.ata_port_operations, %struct.ata_port_operations* %23, i32 0, i32 0
  %25 = load %struct.ata_port_operations*, %struct.ata_port_operations** %24, align 8
  store %struct.ata_port_operations* %25, %struct.ata_port_operations** %3, align 8
  br label %26

26:                                               ; preds = %52, %21
  %27 = load %struct.ata_port_operations*, %struct.ata_port_operations** %3, align 8
  %28 = icmp ne %struct.ata_port_operations* %27, null
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load %struct.ata_port_operations*, %struct.ata_port_operations** %3, align 8
  %31 = bitcast %struct.ata_port_operations* %30 to i8**
  store i8** %31, i8*** %7, align 8
  %32 = load i8**, i8*** %4, align 8
  store i8** %32, i8*** %6, align 8
  br label %33

33:                                               ; preds = %46, %29
  %34 = load i8**, i8*** %6, align 8
  %35 = load i8**, i8*** %5, align 8
  %36 = icmp ult i8** %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8**, i8*** %7, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %6, align 8
  store i8* %43, i8** %44, align 8
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45
  %47 = load i8**, i8*** %6, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %48, i8*** %6, align 8
  %49 = load i8**, i8*** %7, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %7, align 8
  br label %33

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.ata_port_operations*, %struct.ata_port_operations** %3, align 8
  %54 = getelementptr inbounds %struct.ata_port_operations, %struct.ata_port_operations* %53, i32 0, i32 0
  %55 = load %struct.ata_port_operations*, %struct.ata_port_operations** %54, align 8
  store %struct.ata_port_operations* %55, %struct.ata_port_operations** %3, align 8
  br label %26

56:                                               ; preds = %26
  %57 = load i8**, i8*** %4, align 8
  store i8** %57, i8*** %6, align 8
  br label %58

58:                                               ; preds = %70, %56
  %59 = load i8**, i8*** %6, align 8
  %60 = load i8**, i8*** %5, align 8
  %61 = icmp ult i8** %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i8**, i8*** %6, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @IS_ERR(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i8**, i8*** %6, align 8
  store i8* null, i8** %68, align 8
  br label %69

69:                                               ; preds = %67, %62
  br label %70

70:                                               ; preds = %69
  %71 = load i8**, i8*** %6, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** %6, align 8
  br label %58

73:                                               ; preds = %58
  %74 = load %struct.ata_port_operations*, %struct.ata_port_operations** %2, align 8
  %75 = getelementptr inbounds %struct.ata_port_operations, %struct.ata_port_operations* %74, i32 0, i32 0
  store %struct.ata_port_operations* null, %struct.ata_port_operations** %75, align 8
  %76 = call i32 @spin_unlock(i32* @ata_finalize_port_ops.lock)
  br label %77

77:                                               ; preds = %73, %20
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
