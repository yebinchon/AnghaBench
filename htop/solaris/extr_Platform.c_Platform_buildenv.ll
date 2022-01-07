; ModuleID = '/home/carl/AnghaBench/htop/solaris/extr_Platform.c_Platform_buildenv.c'
source_filename = "/home/carl/AnghaBench/htop/solaris/extr_Platform.c_Platform_buildenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_prochandle = type { i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ps_prochandle*, i64, i8*)* @Platform_buildenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Platform_buildenv(i8* %0, %struct.ps_prochandle* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ps_prochandle*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.ps_prochandle* %1, %struct.ps_prochandle** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load %struct.ps_prochandle*, %struct.ps_prochandle** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = add i64 %18, 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  %27 = icmp ugt i64 %19, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %34, 2
  store i64 %35, i64* %33, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @xRealloc(i64 %31, i32 %36)
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %28, %4
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %41, 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %45, %48
  %50 = icmp ugt i64 %42, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %88

52:                                               ; preds = %40
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %55, %58
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %63, %66
  %68 = call i32 @strlcpy(i64 %59, i8* %60, i64 %67)
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %71, %74
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %75, %76
  %78 = add i64 %77, 1
  %79 = call i32 @strncpy(i64 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %82, %83
  %85 = add i64 %84, 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %52, %51
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @xRealloc(i64, i32) #1

declare dso_local i32 @strlcpy(i64, i8*, i64) #1

declare dso_local i32 @strncpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
