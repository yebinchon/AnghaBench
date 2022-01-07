; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_debugfile.c_debugfile_write_append.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_debugfile.c_debugfile_write_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@EOL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debugfile_write_append(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %15, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  br label %76

25:                                               ; preds = %7
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %16, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %16, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %52

37:                                               ; preds = %34, %31, %25
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @debugfile_format_plain(%struct.TYPE_5__* %38, i32* %39, i32 %40)
  %42 = load i32, i32* %16, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %16, align 4
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %51

47:                                               ; preds = %44, %37
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = call i32 @hc_fputc(i8 signext 58, i32* %49)
  br label %51

51:                                               ; preds = %47, %44
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i32*, i32** %9, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = call i32 @hc_fwrite(i8* %54, i32 %55, i32 1, i32* %57)
  %59 = load i32, i32* %16, align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = call i32 @hc_fputc(i8 signext 58, i32* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @debugfile_format_plain(%struct.TYPE_5__* %65, i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %61, %52
  %70 = load i8*, i8** @EOL, align 8
  %71 = load i8*, i8** @EOL, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = call i32 @hc_fwrite(i8* %70, i32 %72, i32 1, i32* %74)
  br label %76

76:                                               ; preds = %69, %24
  ret void
}

declare dso_local i32 @debugfile_format_plain(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @hc_fputc(i8 signext, i32*) #1

declare dso_local i32 @hc_fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
