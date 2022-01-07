; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_vpe.c_simplify_symbols.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_vpe.c_simplify_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.module = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"simplify_symbols: ignoring SHN_MIPS_SCOMMON symbol <%s> st_shndx %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"_gp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i8*, i8*, i32, %struct.module*)* @simplify_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simplify_symbols(%struct.TYPE_5__* %0, i32 %1, i8* %2, i8* %3, i32 %4, %struct.module* %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.module*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.module* %5, %struct.module** %12, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %13, align 8
  store i64 0, i64* %15, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %33, 12
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %36

36:                                               ; preds = %60, %6
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = load i32, i32* %16, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %41, i64 %48
  %50 = call i64 @strncmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = load i32, i32* %16, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %15, align 8
  br label %63

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %16, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %16, align 4
  br label %36

63:                                               ; preds = %52, %36
  store i32 1, i32* %16, align 4
  br label %64

64:                                               ; preds = %157, %63
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %160

68:                                               ; preds = %64
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %70 = load i32, i32* %16, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %112 [
    i32 130, label %75
    i32 131, label %93
    i32 128, label %94
    i32 129, label %95
  ]

75:                                               ; preds = %68
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %77 = load i32, i32* %16, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %18, align 4
  %82 = load i64, i64* %15, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %85 = load i32, i32* %16, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 %83, i32* %88, align 4
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %15, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %15, align 8
  br label %156

93:                                               ; preds = %68
  br label %156

94:                                               ; preds = %68
  br label %156

95:                                               ; preds = %68
  %96 = load i8*, i8** %9, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %98 = load i32, i32* %16, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %96, i64 %103
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %106 = load i32, i32* %16, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pr_debug(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %104, i32 %110)
  br label %156

112:                                              ; preds = %68
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %115 = load i32, i32* %16, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %14, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %126 = load i32, i32* %16, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %124, i64 %131
  %133 = call i64 @strncmp(i8* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %112
  %136 = load i64, i64* %14, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %138 = load i32, i32* %16, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = call i32 @save_gp_address(i64 %136, i64 %143)
  br label %145

145:                                              ; preds = %135, %112
  %146 = load i64, i64* %14, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %148 = load i32, i32* %16, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 %153, %146
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %151, align 4
  br label %156

156:                                              ; preds = %145, %95, %94, %93, %75
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %16, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %16, align 4
  br label %64

160:                                              ; preds = %64
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32) #1

declare dso_local i32 @save_gp_address(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
