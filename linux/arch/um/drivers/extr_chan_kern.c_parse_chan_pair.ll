; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_parse_chan_pair.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_parse_chan_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { %struct.chan*, %struct.chan*, %struct.list_head }
%struct.chan = type { i32, i32, i32 }
%struct.list_head = type { i32 }
%struct.chan_opts = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_chan_pair(i8* %0, %struct.line* %1, i32 %2, %struct.chan_opts* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.line*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.chan_opts*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.list_head*, align 8
  %13 = alloca %struct.chan*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.line* %1, %struct.line** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.chan_opts* %3, %struct.chan_opts** %10, align 8
  store i8** %4, i8*** %11, align 8
  %16 = load %struct.line*, %struct.line** %8, align 8
  %17 = getelementptr inbounds %struct.line, %struct.line* %16, i32 0, i32 2
  store %struct.list_head* %17, %struct.list_head** %12, align 8
  %18 = load %struct.list_head*, %struct.list_head** %12, align 8
  %19 = call i32 @list_empty(%struct.list_head* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %5
  %22 = load %struct.line*, %struct.line** %8, align 8
  %23 = getelementptr inbounds %struct.line, %struct.line* %22, i32 0, i32 0
  store %struct.chan* null, %struct.chan** %23, align 8
  %24 = load %struct.line*, %struct.line** %8, align 8
  %25 = getelementptr inbounds %struct.line, %struct.line* %24, i32 0, i32 1
  store %struct.chan* null, %struct.chan** %25, align 8
  %26 = load %struct.list_head*, %struct.list_head** %12, align 8
  %27 = call i32 @free_chan(%struct.list_head* %26)
  %28 = load %struct.list_head*, %struct.list_head** %12, align 8
  %29 = call i32 @INIT_LIST_HEAD(%struct.list_head* %28)
  br label %30

30:                                               ; preds = %21, %5
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %107

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 44)
  store i8* %36, i8** %15, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %82

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %15, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %15, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %15, align 8
  %44 = load %struct.line*, %struct.line** %8, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.chan_opts*, %struct.chan_opts** %10, align 8
  %48 = load i8**, i8*** %11, align 8
  %49 = call %struct.chan* @parse_chan(%struct.line* %44, i8* %45, i32 %46, %struct.chan_opts* %47, i8** %48)
  store %struct.chan* %49, %struct.chan** %13, align 8
  %50 = load %struct.chan*, %struct.chan** %13, align 8
  %51 = icmp eq %struct.chan* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store i32 -1, i32* %6, align 4
  br label %107

53:                                               ; preds = %39
  %54 = load %struct.chan*, %struct.chan** %13, align 8
  %55 = getelementptr inbounds %struct.chan, %struct.chan* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.chan*, %struct.chan** %13, align 8
  %57 = getelementptr inbounds %struct.chan, %struct.chan* %56, i32 0, i32 2
  %58 = load %struct.list_head*, %struct.list_head** %12, align 8
  %59 = call i32 @list_add(i32* %57, %struct.list_head* %58)
  %60 = load %struct.chan*, %struct.chan** %13, align 8
  %61 = load %struct.line*, %struct.line** %8, align 8
  %62 = getelementptr inbounds %struct.line, %struct.line* %61, i32 0, i32 1
  store %struct.chan* %60, %struct.chan** %62, align 8
  %63 = load %struct.line*, %struct.line** %8, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.chan_opts*, %struct.chan_opts** %10, align 8
  %67 = load i8**, i8*** %11, align 8
  %68 = call %struct.chan* @parse_chan(%struct.line* %63, i8* %64, i32 %65, %struct.chan_opts* %66, i8** %67)
  store %struct.chan* %68, %struct.chan** %13, align 8
  %69 = load %struct.chan*, %struct.chan** %13, align 8
  %70 = icmp eq %struct.chan* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %53
  store i32 -1, i32* %6, align 4
  br label %107

72:                                               ; preds = %53
  %73 = load %struct.chan*, %struct.chan** %13, align 8
  %74 = getelementptr inbounds %struct.chan, %struct.chan* %73, i32 0, i32 2
  %75 = load %struct.list_head*, %struct.list_head** %12, align 8
  %76 = call i32 @list_add(i32* %74, %struct.list_head* %75)
  %77 = load %struct.chan*, %struct.chan** %13, align 8
  %78 = getelementptr inbounds %struct.chan, %struct.chan* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load %struct.chan*, %struct.chan** %13, align 8
  %80 = load %struct.line*, %struct.line** %8, align 8
  %81 = getelementptr inbounds %struct.line, %struct.line* %80, i32 0, i32 0
  store %struct.chan* %79, %struct.chan** %81, align 8
  br label %106

82:                                               ; preds = %34
  %83 = load %struct.line*, %struct.line** %8, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.chan_opts*, %struct.chan_opts** %10, align 8
  %87 = load i8**, i8*** %11, align 8
  %88 = call %struct.chan* @parse_chan(%struct.line* %83, i8* %84, i32 %85, %struct.chan_opts* %86, i8** %87)
  store %struct.chan* %88, %struct.chan** %13, align 8
  %89 = load %struct.chan*, %struct.chan** %13, align 8
  %90 = icmp eq %struct.chan* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  store i32 -1, i32* %6, align 4
  br label %107

92:                                               ; preds = %82
  %93 = load %struct.chan*, %struct.chan** %13, align 8
  %94 = getelementptr inbounds %struct.chan, %struct.chan* %93, i32 0, i32 2
  %95 = load %struct.list_head*, %struct.list_head** %12, align 8
  %96 = call i32 @list_add(i32* %94, %struct.list_head* %95)
  %97 = load %struct.chan*, %struct.chan** %13, align 8
  %98 = getelementptr inbounds %struct.chan, %struct.chan* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  %99 = load %struct.chan*, %struct.chan** %13, align 8
  %100 = getelementptr inbounds %struct.chan, %struct.chan* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  %101 = load %struct.chan*, %struct.chan** %13, align 8
  %102 = load %struct.line*, %struct.line** %8, align 8
  %103 = getelementptr inbounds %struct.line, %struct.line* %102, i32 0, i32 0
  store %struct.chan* %101, %struct.chan** %103, align 8
  %104 = load %struct.line*, %struct.line** %8, align 8
  %105 = getelementptr inbounds %struct.line, %struct.line* %104, i32 0, i32 1
  store %struct.chan* %101, %struct.chan** %105, align 8
  br label %106

106:                                              ; preds = %92, %72
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %91, %71, %52, %33
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @free_chan(%struct.list_head*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.chan* @parse_chan(%struct.line*, i8*, i32, %struct.chan_opts*, i8**) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
