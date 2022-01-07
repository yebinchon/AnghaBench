; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_net_kern.c_check_transport.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_net_kern.c_check_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { i32 (i8*, i8**, i8*)*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, i8*, i32, i8**, i8**, i32)* @check_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_transport(%struct.transport* %0, i8* %1, i32 %2, i8** %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.transport*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.transport* %0, %struct.transport** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.transport*, %struct.transport** %8, align 8
  %16 = getelementptr inbounds %struct.transport, %struct.transport* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strlen(i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.transport*, %struct.transport** %8, align 8
  %21 = getelementptr inbounds %struct.transport, %struct.transport* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i64 @strncmp(i8* %19, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %73

27:                                               ; preds = %6
  %28 = load i32, i32* %14, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 44
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  br label %46

39:                                               ; preds = %27
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %73

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %36
  %47 = load %struct.transport*, %struct.transport** %8, align 8
  %48 = getelementptr inbounds %struct.transport, %struct.transport* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i8* @kmalloc(i32 %49, i32 %50)
  %52 = load i8**, i8*** %11, align 8
  store i8* %51, i8** %52, align 8
  %53 = load i8**, i8*** %11, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 1, i32* %7, align 4
  br label %73

57:                                               ; preds = %46
  %58 = load %struct.transport*, %struct.transport** %8, align 8
  %59 = getelementptr inbounds %struct.transport, %struct.transport* %58, i32 0, i32 0
  %60 = load i32 (i8*, i8**, i8*)*, i32 (i8*, i8**, i8*)** %59, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i8**, i8*** %12, align 8
  %63 = load i8**, i8*** %11, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 %60(i8* %61, i8** %62, i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %57
  %68 = load i8**, i8*** %11, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @kfree(i8* %69)
  %71 = load i8**, i8*** %11, align 8
  store i8* null, i8** %71, align 8
  br label %72

72:                                               ; preds = %67, %57
  store i32 1, i32* %7, align 4
  br label %73

73:                                               ; preds = %72, %56, %44, %26
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
