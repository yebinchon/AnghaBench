; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_imagetag_cmdline.c_init_args_info.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_imagetag_cmdline.c_init_args_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gengetopt_args_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@gengetopt_args_info_help = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gengetopt_args_info*)* @init_args_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_args_info(%struct.gengetopt_args_info* %0) #0 {
  %2 = alloca %struct.gengetopt_args_info*, align 8
  store %struct.gengetopt_args_info* %0, %struct.gengetopt_args_info** %2, align 8
  %3 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %4 = getelementptr inbounds i8*, i8** %3, i64 0
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %7 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %6, i32 0, i32 27
  store i8* %5, i8** %7, align 8
  %8 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 1
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %12 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %11, i32 0, i32 26
  store i8* %10, i8** %12, align 8
  %13 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 2
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %17 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %16, i32 0, i32 25
  store i8* %15, i8** %17, align 8
  %18 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 3
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %22 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %21, i32 0, i32 24
  store i8* %20, i8** %22, align 8
  %23 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 4
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %27 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %26, i32 0, i32 23
  store i8* %25, i8** %27, align 8
  %28 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 5
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %32 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %31, i32 0, i32 22
  store i8* %30, i8** %32, align 8
  %33 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 6
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %37 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %36, i32 0, i32 21
  store i8* %35, i8** %37, align 8
  %38 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 7
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %42 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %41, i32 0, i32 20
  store i8* %40, i8** %42, align 8
  %43 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 8
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %47 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %46, i32 0, i32 19
  store i8* %45, i8** %47, align 8
  %48 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 9
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %52 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %51, i32 0, i32 18
  store i8* %50, i8** %52, align 8
  %53 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 10
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %57 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %56, i32 0, i32 17
  store i8* %55, i8** %57, align 8
  %58 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 11
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %62 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %61, i32 0, i32 16
  store i8* %60, i8** %62, align 8
  %63 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 12
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %67 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %66, i32 0, i32 15
  store i8* %65, i8** %67, align 8
  %68 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 13
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %72 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %71, i32 0, i32 14
  store i8* %70, i8** %72, align 8
  %73 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 14
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %77 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %76, i32 0, i32 13
  store i8* %75, i8** %77, align 8
  %78 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 15
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %82 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %81, i32 0, i32 12
  store i8* %80, i8** %82, align 8
  %83 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 16
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %87 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %86, i32 0, i32 11
  store i8* %85, i8** %87, align 8
  %88 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 17
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %92 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %91, i32 0, i32 10
  store i8* %90, i8** %92, align 8
  %93 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 18
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %97 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %96, i32 0, i32 9
  store i8* %95, i8** %97, align 8
  %98 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 19
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %102 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %101, i32 0, i32 8
  store i8* %100, i8** %102, align 8
  %103 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 20
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %107 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %106, i32 0, i32 7
  store i8* %105, i8** %107, align 8
  %108 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 21
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %112 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %111, i32 0, i32 6
  store i8* %110, i8** %112, align 8
  %113 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 22
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %117 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  %118 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 23
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %122 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 24
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %127 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  %128 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 25
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %132 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  %133 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 26
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %137 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  %138 = load i8**, i8*** @gengetopt_args_info_help, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 27
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.gengetopt_args_info*, %struct.gengetopt_args_info** %2, align 8
  %142 = getelementptr inbounds %struct.gengetopt_args_info, %struct.gengetopt_args_info* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
