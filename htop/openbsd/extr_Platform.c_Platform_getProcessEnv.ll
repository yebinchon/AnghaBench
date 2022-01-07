; ModuleID = '/home/carl/AnghaBench/htop/openbsd/extr_Platform.c_Platform_getProcessEnv.c'
source_filename = "/home/carl/AnghaBench/htop/openbsd/extr_Platform.c_Platform_getProcessEnv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i32 }

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@KVM_NO_FILES = common dso_local global i32 0, align 4
@KERN_PROC_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Platform_getProcessEnv(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.kinfo_proc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %16 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  store i64 4096, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %20 = load i32, i32* @KVM_NO_FILES, align 4
  %21 = call i32* @kvm_openfiles(i32* null, i32* null, i32* null, i32 %20, i8* %19)
  store i32* %21, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %121

24:                                               ; preds = %1
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* @KERN_PROC_PID, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call %struct.kinfo_proc* @kvm_getprocs(i32* %25, i32 %26, i32 %27, i32 4, i32* %8)
  store %struct.kinfo_proc* %28, %struct.kinfo_proc** %10, align 8
  %29 = icmp eq %struct.kinfo_proc* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @kvm_close(i32* %31)
  store i8* null, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %121

33:                                               ; preds = %24
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.kinfo_proc*, %struct.kinfo_proc** %10, align 8
  %36 = call i8** @kvm_getenvv(i32* %34, %struct.kinfo_proc* %35, i32 0)
  store i8** %36, i8*** %7, align 8
  %37 = icmp eq i8** %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @kvm_close(i32* %39)
  store i8* null, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %121

41:                                               ; preds = %33
  %42 = load i64, i64* %11, align 8
  %43 = call i8* @xMalloc(i64 %42)
  store i8* %43, i8** %6, align 8
  %44 = load i8**, i8*** %7, align 8
  store i8** %44, i8*** %14, align 8
  br label %45

45:                                               ; preds = %77, %41
  %46 = load i8**, i8*** %14, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %80

49:                                               ; preds = %45
  %50 = load i8**, i8*** %14, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %15, align 8
  %57 = add i64 %55, %56
  %58 = load i64, i64* %11, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load i64, i64* %11, align 8
  %62 = mul i64 %61, 2
  store i64 %62, i64* %11, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i8* @xRealloc(i8* %63, i64 %64)
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %60, %49
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8**, i8*** %14, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %15, align 8
  %73 = call i32 @strlcpy(i8* %69, i8* %71, i64 %72)
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %12, align 8
  br label %77

77:                                               ; preds = %66
  %78 = load i8**, i8*** %14, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i32 1
  store i8** %79, i8*** %14, align 8
  br label %45

80:                                               ; preds = %45
  %81 = load i64, i64* %12, align 8
  %82 = icmp ult i64 %81, 2
  br i1 %82, label %99, label %83

83:                                               ; preds = %80
  %84 = load i8*, i8** %6, align 8
  %85 = load i64, i64* %12, align 8
  %86 = sub i64 %85, 1
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %83
  %92 = load i8*, i8** %6, align 8
  %93 = load i64, i64* %12, align 8
  %94 = sub i64 %93, 2
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %91, %83, %80
  %100 = load i64, i64* %12, align 8
  %101 = add i64 %100, 2
  %102 = load i64, i64* %11, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i8*, i8** %6, align 8
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %106, 2
  %108 = call i8* @xRealloc(i8* %105, i64 %107)
  store i8* %108, i8** %6, align 8
  br label %109

109:                                              ; preds = %104, %99
  %110 = load i8*, i8** %6, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8 0, i8* %112, align 1
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %12, align 8
  %115 = add i64 %114, 1
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 0, i8* %116, align 1
  br label %117

117:                                              ; preds = %109, %91
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @kvm_close(i32* %118)
  %120 = load i8*, i8** %6, align 8
  store i8* %120, i8** %2, align 8
  store i32 1, i32* %13, align 4
  br label %121

121:                                              ; preds = %117, %38, %30, %23
  %122 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i8*, i8** %2, align 8
  ret i8* %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @kvm_openfiles(i32*, i32*, i32*, i32, i8*) #2

declare dso_local %struct.kinfo_proc* @kvm_getprocs(i32*, i32, i32, i32, i32*) #2

declare dso_local i32 @kvm_close(i32*) #2

declare dso_local i8** @kvm_getenvv(i32*, %struct.kinfo_proc*, i32) #2

declare dso_local i8* @xMalloc(i64) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @xRealloc(i8*, i64) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
