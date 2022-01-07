; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_read_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type opaque
%struct.tl_tree_type = type { i32, %struct.TYPE_7__, %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@total_ref_cnt = common dso_local global i32 0, align 4
@persistent_tree_nodes = common dso_local global i32 0, align 4
@total_tree_nodes_existed = common dso_local global i32 0, align 4
@tl_ptype_methods = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"T->flags = %d, T->chilren_num = %d\0A\00", align 1
@FLAG_NOVAR = common dso_local global i32 0, align 4
@schema_version = common dso_local global i32 0, align 4
@TLS_EXPR_NAT = common dso_local global i32 0, align 4
@TLS_EXPR_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_tree* @read_type(i32* %0) #0 {
  %2 = alloca %struct.tl_tree*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tl_tree_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i8* @zzmalloc0(i32 40)
  %8 = bitcast i8* %7 to %struct.tl_tree_type*
  store %struct.tl_tree_type* %8, %struct.tl_tree_type** %4, align 8
  %9 = call i32 @ADD_PMALLOC(i32 40)
  %10 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %11 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i32, i32* @total_ref_cnt, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @total_ref_cnt, align 4
  %15 = load i32, i32* @persistent_tree_nodes, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @persistent_tree_nodes, align 4
  %17 = load i32, i32* @total_tree_nodes_existed, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @total_tree_nodes_existed, align 4
  %19 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %20 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store i32* @tl_ptype_methods, i32** %21, align 8
  %22 = call i8* (...) @tl_parse_int()
  %23 = call %struct.TYPE_8__* @tl_type_get_by_name(i8* %22)
  %24 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %25 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %24, i32 0, i32 3
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %25, align 8
  %26 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %27 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store %struct.tl_tree* null, %struct.tl_tree** %2, align 8
  br label %226

31:                                               ; preds = %1
  %32 = call i8* (...) @tl_parse_int()
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %35 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = call i8* (...) @tl_parse_int()
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %40 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @verbosity, align 4
  %42 = icmp sge i32 %41, 2
  br i1 %42, label %43, label %53

43:                                               ; preds = %31
  %44 = load i32, i32* @stderr, align 4
  %45 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %46 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %50 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %43, %31
  %54 = call i64 (...) @tl_parse_error()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %58 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %57, i32 0, i32 3
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %63 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56, %53
  store %struct.tl_tree* null, %struct.tl_tree** %2, align 8
  br label %226

67:                                               ; preds = %56
  %68 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %69 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %74 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 1000
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %67
  store %struct.tl_tree* null, %struct.tl_tree** %2, align 8
  br label %226

78:                                               ; preds = %72
  %79 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %80 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 8, %82
  %84 = trunc i64 %83 to i32
  %85 = call i8* @zzmalloc0(i32 %84)
  %86 = bitcast i8* %85 to %struct.TYPE_9__**
  %87 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %88 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %87, i32 0, i32 2
  store %struct.TYPE_9__** %86, %struct.TYPE_9__*** %88, align 8
  %89 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %90 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = mul i64 8, %92
  %94 = trunc i64 %93 to i32
  %95 = call i32 @ADD_PMALLOC(i32 %94)
  %96 = load i32, i32* @FLAG_NOVAR, align 4
  %97 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %98 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %219, %78
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %105 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %222

108:                                              ; preds = %102
  %109 = load i32, i32* @schema_version, align 4
  %110 = icmp sge i32 %109, 2
  br i1 %110, label %111, label %168

111:                                              ; preds = %108
  %112 = call i8* (...) @tl_parse_int()
  %113 = ptrtoint i8* %112 to i32
  store i32 %113, i32* %6, align 4
  %114 = call i64 (...) @tl_parse_error()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store %struct.tl_tree* null, %struct.tl_tree** %2, align 8
  br label %226

117:                                              ; preds = %111
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @TLS_EXPR_NAT, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %141

121:                                              ; preds = %117
  %122 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %123 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %122, i32 0, i32 3
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %5, align 4
  %128 = shl i32 1, %127
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %121
  store %struct.tl_tree* null, %struct.tl_tree** %2, align 8
  br label %226

132:                                              ; preds = %121
  %133 = load i32*, i32** %3, align 8
  %134 = call %struct.TYPE_9__* @read_nat_expr(i32* %133)
  %135 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %136 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %135, i32 0, i32 2
  %137 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %137, i64 %139
  store %struct.TYPE_9__* %134, %struct.TYPE_9__** %140, align 8
  br label %167

141:                                              ; preds = %117
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @TLS_EXPR_TYPE, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %141
  %146 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %147 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %146, i32 0, i32 3
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %5, align 4
  %152 = shl i32 1, %151
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  store %struct.tl_tree* null, %struct.tl_tree** %2, align 8
  br label %226

156:                                              ; preds = %145
  %157 = load i32*, i32** %3, align 8
  %158 = call %struct.TYPE_9__* @read_type_expr(i32* %157)
  %159 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %160 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %159, i32 0, i32 2
  %161 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %161, i64 %163
  store %struct.TYPE_9__* %158, %struct.TYPE_9__** %164, align 8
  br label %166

165:                                              ; preds = %141
  store %struct.tl_tree* null, %struct.tl_tree** %2, align 8
  br label %226

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166, %132
  br label %177

168:                                              ; preds = %108
  %169 = load i32*, i32** %3, align 8
  %170 = call %struct.TYPE_9__* @read_tree(i32* %169)
  %171 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %172 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %171, i32 0, i32 2
  %173 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %173, i64 %175
  store %struct.TYPE_9__* %170, %struct.TYPE_9__** %176, align 8
  br label %177

177:                                              ; preds = %168, %167
  %178 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %179 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %178, i32 0, i32 2
  %180 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %180, i64 %182
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = icmp ne %struct.TYPE_9__* %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %177
  store %struct.tl_tree* null, %struct.tl_tree** %2, align 8
  br label %226

187:                                              ; preds = %177
  %188 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %189 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %188, i32 0, i32 2
  %190 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %190, i64 %192
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = call i32 @TL_IS_NAT_VAR(%struct.TYPE_9__* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %218, label %197

197:                                              ; preds = %187
  %198 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %199 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %198, i32 0, i32 2
  %200 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %199, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %200, i64 %202
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @FLAG_NOVAR, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %197
  %211 = load i32, i32* @FLAG_NOVAR, align 4
  %212 = xor i32 %211, -1
  %213 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %214 = getelementptr inbounds %struct.tl_tree_type, %struct.tl_tree_type* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, %212
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %210, %197, %187
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %5, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %5, align 4
  br label %102

222:                                              ; preds = %102
  %223 = load %struct.tl_tree_type*, %struct.tl_tree_type** %4, align 8
  %224 = bitcast %struct.tl_tree_type* %223 to i8*
  %225 = bitcast i8* %224 to %struct.tl_tree*
  store %struct.tl_tree* %225, %struct.tl_tree** %2, align 8
  br label %226

226:                                              ; preds = %222, %186, %165, %155, %131, %116, %77, %66, %30
  %227 = load %struct.tl_tree*, %struct.tl_tree** %2, align 8
  ret %struct.tl_tree* %227
}

declare dso_local i8* @zzmalloc0(i32) #1

declare dso_local i32 @ADD_PMALLOC(i32) #1

declare dso_local %struct.TYPE_8__* @tl_type_get_by_name(i8*) #1

declare dso_local i8* @tl_parse_int(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i64 @tl_parse_error(...) #1

declare dso_local %struct.TYPE_9__* @read_nat_expr(i32*) #1

declare dso_local %struct.TYPE_9__* @read_type_expr(i32*) #1

declare dso_local %struct.TYPE_9__* @read_tree(i32*) #1

declare dso_local i32 @TL_IS_NAT_VAR(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
