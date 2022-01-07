; ModuleID = '/home/carl/AnghaBench/ish/jit/extr_gen.c_gen_op.c'
source_filename = "/home/carl/AnghaBench/ish/jit/extr_gen.c_gen_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_state = type { i32 }
%struct.modrm = type { i32, i32, i32*, i32 }

@arg_count = common dso_local global i32 0, align 4
@arg_reg_a = common dso_local global i32 0, align 4
@modrm_reg = common dso_local global i32 0, align 4
@arg_mem = common dso_local global i32 0, align 4
@modrm_mem = common dso_local global i32 0, align 4
@reg_none = common dso_local global i32 0, align 4
@arg_imm = common dso_local global i32 0, align 4
@UNDEFINED = common dso_local global i32 0, align 4
@arg_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gen_state*, i32**, i32, %struct.modrm*, i32**, i32, i32*, i32, i32*)* @gen_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_op(%struct.gen_state* %0, i32** %1, i32 %2, %struct.modrm* %3, i32** %4, i32 %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.gen_state*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.modrm*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.gen_state* %0, %struct.gen_state** %11, align 8
  store i32** %1, i32*** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.modrm* %3, %struct.modrm** %14, align 8
  store i32** %4, i32*** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %20 = load i32, i32* %16, align 4
  %21 = call i32 @sz(i32 %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32**, i32*** %12, align 8
  %23 = load i32, i32* %16, align 4
  %24 = load i32, i32* @arg_count, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %22, i64 %26
  store i32** %27, i32*** %12, align 8
  %28 = load i32, i32* %13, align 4
  switch i32 %28, label %64 [
    i32 129, label %29
    i32 128, label %35
    i32 130, label %50
    i32 131, label %61
  ]

29:                                               ; preds = %9
  %30 = load %struct.modrm*, %struct.modrm** %14, align 8
  %31 = getelementptr inbounds %struct.modrm, %struct.modrm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @arg_reg_a, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %13, align 4
  br label %64

35:                                               ; preds = %9
  %36 = load %struct.modrm*, %struct.modrm** %14, align 8
  %37 = getelementptr inbounds %struct.modrm, %struct.modrm* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @modrm_reg, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.modrm*, %struct.modrm** %14, align 8
  %43 = getelementptr inbounds %struct.modrm, %struct.modrm* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @arg_reg_a, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  br label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @arg_mem, align 4
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %47, %41
  br label %64

50:                                               ; preds = %9
  %51 = load i32, i32* @arg_mem, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* @modrm_mem, align 4
  %53 = load %struct.modrm*, %struct.modrm** %14, align 8
  %54 = getelementptr inbounds %struct.modrm, %struct.modrm* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @reg_none, align 4
  %56 = load %struct.modrm*, %struct.modrm** %14, align 8
  %57 = getelementptr inbounds %struct.modrm, %struct.modrm* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %19, align 8
  %59 = load %struct.modrm*, %struct.modrm** %14, align 8
  %60 = getelementptr inbounds %struct.modrm, %struct.modrm* %59, i32 0, i32 2
  store i32* %58, i32** %60, align 8
  br label %64

61:                                               ; preds = %9
  %62 = load i32, i32* @arg_imm, align 4
  store i32 %62, i32* %13, align 4
  %63 = load i32**, i32*** %15, align 8
  store i32* inttoptr (i64 1 to i32*), i32** %63, align 8
  br label %64

64:                                               ; preds = %9, %61, %50, %49, %29
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @arg_count, align 4
  %67 = icmp uge i32 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load i32**, i32*** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %68, %64
  %76 = load i32, i32* @UNDEFINED, align 4
  br label %77

77:                                               ; preds = %75, %68
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @arg_mem, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @arg_addr, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81, %77
  %86 = load %struct.gen_state*, %struct.gen_state** %11, align 8
  %87 = load %struct.modrm*, %struct.modrm** %14, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load i32*, i32** %17, align 8
  %90 = call i32 @gen_addr(%struct.gen_state* %86, %struct.modrm* %87, i32 %88, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  store i32 0, i32* %10, align 4
  br label %117

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %81
  %95 = load i32**, i32*** %12, align 8
  %96 = load i32, i32* %13, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @GEN(i32* %99)
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @arg_imm, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = load i32**, i32*** %15, align 8
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @GEN(i32* %106)
  br label %116

108:                                              ; preds = %94
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @arg_mem, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32*, i32** %17, align 8
  %114 = call i32 @GEN(i32* %113)
  br label %115

115:                                              ; preds = %112, %108
  br label %116

116:                                              ; preds = %115, %104
  store i32 1, i32* %10, align 4
  br label %117

117:                                              ; preds = %116, %92
  %118 = load i32, i32* %10, align 4
  ret i32 %118
}

declare dso_local i32 @sz(i32) #1

declare dso_local i32 @gen_addr(%struct.gen_state*, %struct.modrm*, i32, i32*) #1

declare dso_local i32 @GEN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
