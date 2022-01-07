; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_bpf_int_jit_compile.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_bpf_int_jit_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, i32, i32, i8*, i32 }
%struct.bpf_binary_header = type { i32 }
%struct.jit_context = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"bpf_jit: proglen=%d != oldproglen=%d\0A\00", align 1
@jit_fill_hole = common dso_local global i32 0, align 4
@bpf_jit_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_prog* @bpf_int_jit_compile(%struct.bpf_prog* %0) #0 {
  %2 = alloca %struct.bpf_prog*, align 8
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca %struct.bpf_binary_header*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.jit_context, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  store %struct.bpf_binary_header* null, %struct.bpf_binary_header** %4, align 8
  %15 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %15, %struct.bpf_prog** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = bitcast %struct.jit_context* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %17 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %18 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  store %struct.bpf_prog* %22, %struct.bpf_prog** %2, align 8
  br label %174

23:                                               ; preds = %1
  %24 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %25 = call %struct.bpf_prog* @bpf_jit_blind_constants(%struct.bpf_prog* %24)
  store %struct.bpf_prog* %25, %struct.bpf_prog** %5, align 8
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %27 = call i64 @IS_ERR(%struct.bpf_prog* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  store %struct.bpf_prog* %30, %struct.bpf_prog** %2, align 8
  br label %174

31:                                               ; preds = %23
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %33 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %34 = icmp ne %struct.bpf_prog* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  %36 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %36, %struct.bpf_prog** %3, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %39 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32* @kmalloc_array(i32 %40, i32 4, i32 %41)
  store i32* %42, i32** %12, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  store %struct.bpf_prog* %46, %struct.bpf_prog** %3, align 8
  br label %157

47:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %51 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 64
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %48

65:                                               ; preds = %48
  %66 = load i32, i32* %7, align 4
  %67 = getelementptr inbounds %struct.jit_context, %struct.jit_context* %9, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %121, %65
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 20
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i1 [ true, %68 ], [ %73, %71 ]
  br i1 %75, label %76, label %124

76:                                               ; preds = %74
  %77 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @do_jit(%struct.bpf_prog* %77, i32* %78, i32* %79, i32 %80, %struct.jit_context* %9)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %100, %84
  store i32* null, i32** %11, align 8
  %86 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %4, align 8
  %87 = icmp ne %struct.bpf_binary_header* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %4, align 8
  %90 = call i32 @bpf_jit_binary_free(%struct.bpf_binary_header* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  store %struct.bpf_prog* %92, %struct.bpf_prog** %3, align 8
  br label %154

93:                                               ; preds = %76
  %94 = load i32*, i32** %11, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102)
  br label %85

104:                                              ; preds = %96
  br label %124

105:                                              ; preds = %93
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @jit_fill_hole, align 4
  %112 = call %struct.bpf_binary_header* @bpf_jit_binary_alloc(i32 %110, i32** %11, i32 1, i32 %111)
  store %struct.bpf_binary_header* %112, %struct.bpf_binary_header** %4, align 8
  %113 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %4, align 8
  %114 = icmp ne %struct.bpf_binary_header* %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %109
  %116 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  store %struct.bpf_prog* %116, %struct.bpf_prog** %3, align 8
  br label %154

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %105
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %8, align 4
  %120 = call i32 (...) @cond_resched()
  br label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %68

124:                                              ; preds = %104, %74
  %125 = load i32, i32* @bpf_jit_enable, align 4
  %126 = icmp sgt i32 %125, 1
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %129 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @bpf_jit_dump(i32 %130, i32 %131, i32 %133, i32* %134)
  br label %136

136:                                              ; preds = %127, %124
  %137 = load i32*, i32** %11, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %151

139:                                              ; preds = %136
  %140 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %4, align 8
  %141 = call i32 @bpf_jit_binary_lock_ro(%struct.bpf_binary_header* %140)
  %142 = load i32*, i32** %11, align 8
  %143 = bitcast i32* %142 to i8*
  %144 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %145 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %144, i32 0, i32 3
  store i8* %143, i8** %145, align 8
  %146 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %147 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %146, i32 0, i32 1
  store i32 1, i32* %147, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %150 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  br label %153

151:                                              ; preds = %136
  %152 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  store %struct.bpf_prog* %152, %struct.bpf_prog** %3, align 8
  br label %153

153:                                              ; preds = %151, %139
  br label %154

154:                                              ; preds = %153, %115, %91
  %155 = load i32*, i32** %12, align 8
  %156 = call i32 @kfree(i32* %155)
  br label %157

157:                                              ; preds = %154, %45
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %157
  %161 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %162 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %163 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %164 = icmp eq %struct.bpf_prog* %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  br label %169

167:                                              ; preds = %160
  %168 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi %struct.bpf_prog* [ %166, %165 ], [ %168, %167 ]
  %171 = call i32 @bpf_jit_prog_release_other(%struct.bpf_prog* %161, %struct.bpf_prog* %170)
  br label %172

172:                                              ; preds = %169, %157
  %173 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %173, %struct.bpf_prog** %2, align 8
  br label %174

174:                                              ; preds = %172, %29, %21
  %175 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  ret %struct.bpf_prog* %175
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.bpf_prog* @bpf_jit_blind_constants(%struct.bpf_prog*) #2

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #2

declare dso_local i32* @kmalloc_array(i32, i32, i32) #2

declare dso_local i32 @do_jit(%struct.bpf_prog*, i32*, i32*, i32, %struct.jit_context*) #2

declare dso_local i32 @bpf_jit_binary_free(%struct.bpf_binary_header*) #2

declare dso_local i32 @pr_err(i8*, i32, i32) #2

declare dso_local %struct.bpf_binary_header* @bpf_jit_binary_alloc(i32, i32**, i32, i32) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i32 @bpf_jit_dump(i32, i32, i32, i32*) #2

declare dso_local i32 @bpf_jit_binary_lock_ro(%struct.bpf_binary_header*) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @bpf_jit_prog_release_other(%struct.bpf_prog*, %struct.bpf_prog*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
