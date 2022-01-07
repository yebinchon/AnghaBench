; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_bpf_int_jit_compile.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_bpf_int_jit_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32, i32, i8*, i64, i32 }
%struct.bpf_binary_header = type { i32 }
%struct.jit_ctx = type { i32, i32, i32, i32, i32*, i32*, i64, i32*, i32, %struct.bpf_prog* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@jit_fill_hole = common dso_local global i32 0, align 4
@bpf_jit_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bpf_prog* @bpf_int_jit_compile(%struct.bpf_prog* %0) #0 {
  %2 = alloca %struct.bpf_prog*, align 8
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.bpf_binary_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.jit_ctx, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  %12 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %12, %struct.bpf_prog** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %14 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %18, %struct.bpf_prog** %2, align 8
  br label %197

19:                                               ; preds = %1
  %20 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %21 = call %struct.bpf_prog* @bpf_jit_blind_constants(%struct.bpf_prog* %20)
  store %struct.bpf_prog* %21, %struct.bpf_prog** %4, align 8
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %23 = call i64 @IS_ERR(%struct.bpf_prog* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %26, %struct.bpf_prog** %2, align 8
  br label %197

27:                                               ; preds = %19
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %29 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %30 = icmp ne %struct.bpf_prog* %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  store %struct.bpf_prog* %32, %struct.bpf_prog** %3, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = call i32 @memset(%struct.jit_ctx* %8, i32 0, i32 64)
  %35 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %36 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 9
  store %struct.bpf_prog* %35, %struct.bpf_prog** %36, align 8
  %37 = call i32 (...) @cpu_architecture()
  %38 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 8
  store i32 %37, i32* %38, align 8
  %39 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %40 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kcalloc(i64 %41, i32 4, i32 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 4
  store i32* %44, i32** %45, align 8
  %46 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %50, %struct.bpf_prog** %3, align 8
  br label %180

51:                                               ; preds = %33
  %52 = call i64 @build_body(%struct.jit_ctx* %8)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %55, %struct.bpf_prog** %3, align 8
  br label %176

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %9, align 4
  %59 = call i32 @build_prologue(%struct.jit_ctx* %8)
  %60 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sub i32 %61, %62
  %64 = mul i32 %63, 4
  %65 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 2
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %9, align 4
  %71 = call i32 @build_epilogue(%struct.jit_ctx* %8)
  %72 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sub i32 %73, %74
  %76 = mul i32 %75, 4
  %77 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = zext i32 %81 to i64
  %83 = add nsw i64 %82, %79
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 8
  %85 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %56
  %89 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i8* @kcalloc(i64 %90, i32 4, i32 %91)
  %93 = bitcast i8* %92 to i32*
  %94 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 5
  store i32* %93, i32** %94, align 8
  %95 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %99, %struct.bpf_prog** %3, align 8
  br label %176

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %56
  %102 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = zext i32 %103 to i64
  %105 = mul i64 4, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @jit_fill_hole, align 4
  %109 = call %struct.bpf_binary_header* @bpf_jit_binary_alloc(i32 %107, i32** %11, i32 4, i32 %108)
  store %struct.bpf_binary_header* %109, %struct.bpf_binary_header** %6, align 8
  %110 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %111 = icmp eq %struct.bpf_binary_header* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %113, %struct.bpf_prog** %3, align 8
  br label %167

114:                                              ; preds = %101
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 7
  store i32* %115, i32** %116, align 8
  %117 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = call i32 @build_prologue(%struct.jit_ctx* %8)
  %119 = call i64 @build_body(%struct.jit_ctx* %8)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  store i32* null, i32** %11, align 8
  %122 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %123 = call i32 @bpf_jit_binary_free(%struct.bpf_binary_header* %122)
  %124 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %124, %struct.bpf_prog** %3, align 8
  br label %167

125:                                              ; preds = %114
  %126 = call i32 @build_epilogue(%struct.jit_ctx* %8)
  %127 = call i64 @validate_code(%struct.jit_ctx* %8)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  store i32* null, i32** %11, align 8
  %130 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %131 = call i32 @bpf_jit_binary_free(%struct.bpf_binary_header* %130)
  %132 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  store %struct.bpf_prog* %132, %struct.bpf_prog** %3, align 8
  br label %167

133:                                              ; preds = %125
  %134 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %135 = ptrtoint %struct.bpf_binary_header* %134 to i32
  %136 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 7
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = ptrtoint i32* %141 to i32
  %143 = call i32 @flush_icache_range(i32 %135, i32 %142)
  %144 = load i32, i32* @bpf_jit_enable, align 4
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %154

146:                                              ; preds = %133
  %147 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %148 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 7
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @bpf_jit_dump(i64 %149, i32 %150, i32 2, i32* %152)
  br label %154

154:                                              ; preds = %146, %133
  %155 = load %struct.bpf_binary_header*, %struct.bpf_binary_header** %6, align 8
  %156 = call i32 @bpf_jit_binary_lock_ro(%struct.bpf_binary_header* %155)
  %157 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 7
  %158 = load i32*, i32** %157, align 8
  %159 = bitcast i32* %158 to i8*
  %160 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %161 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %163 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %166 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %154, %129, %121, %112
  %168 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 6
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 5
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @kfree(i32* %173)
  br label %175

175:                                              ; preds = %171, %167
  br label %176

176:                                              ; preds = %175, %98, %54
  %177 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 4
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @kfree(i32* %178)
  br label %180

180:                                              ; preds = %176, %49
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %180
  %184 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %185 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %186 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %187 = icmp eq %struct.bpf_prog* %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  br label %192

190:                                              ; preds = %183
  %191 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi %struct.bpf_prog* [ %189, %188 ], [ %191, %190 ]
  %194 = call i32 @bpf_jit_prog_release_other(%struct.bpf_prog* %184, %struct.bpf_prog* %193)
  br label %195

195:                                              ; preds = %192, %180
  %196 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  store %struct.bpf_prog* %196, %struct.bpf_prog** %2, align 8
  br label %197

197:                                              ; preds = %195, %25, %17
  %198 = load %struct.bpf_prog*, %struct.bpf_prog** %2, align 8
  ret %struct.bpf_prog* %198
}

declare dso_local %struct.bpf_prog* @bpf_jit_blind_constants(%struct.bpf_prog*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @memset(%struct.jit_ctx*, i32, i32) #1

declare dso_local i32 @cpu_architecture(...) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i64 @build_body(%struct.jit_ctx*) #1

declare dso_local i32 @build_prologue(%struct.jit_ctx*) #1

declare dso_local i32 @build_epilogue(%struct.jit_ctx*) #1

declare dso_local %struct.bpf_binary_header* @bpf_jit_binary_alloc(i32, i32**, i32, i32) #1

declare dso_local i32 @bpf_jit_binary_free(%struct.bpf_binary_header*) #1

declare dso_local i64 @validate_code(%struct.jit_ctx*) #1

declare dso_local i32 @flush_icache_range(i32, i32) #1

declare dso_local i32 @bpf_jit_dump(i64, i32, i32, i32*) #1

declare dso_local i32 @bpf_jit_binary_lock_ro(%struct.bpf_binary_header*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @bpf_jit_prog_release_other(%struct.bpf_prog*, %struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
