; ModuleID = '/home/carl/AnghaBench/hashcat/src/modules/extr_module_12900.c_module_init.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/modules/extr_module_12900.c_module_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@MODULE_CONTEXT_SIZE_CURRENT = common dso_local global i32 0, align 4
@MODULE_INTERFACE_VERSION_CURRENT = common dso_local global i32 0, align 4
@module_attack_exec = common dso_local global i32 0, align 4
@MODULE_DEFAULT = common dso_local global i8* null, align 8
@module_dgst_pos0 = common dso_local global i32 0, align 4
@module_dgst_pos1 = common dso_local global i32 0, align 4
@module_dgst_pos2 = common dso_local global i32 0, align 4
@module_dgst_pos3 = common dso_local global i32 0, align 4
@module_dgst_size = common dso_local global i32 0, align 4
@module_hash_decode = common dso_local global i32 0, align 4
@module_hash_encode = common dso_local global i32 0, align 4
@module_hash_category = common dso_local global i32 0, align 4
@module_hash_name = common dso_local global i32 0, align 4
@module_jit_build_options = common dso_local global i32 0, align 4
@module_kern_type = common dso_local global i32 0, align 4
@module_opti_type = common dso_local global i32 0, align 4
@module_opts_type = common dso_local global i32 0, align 4
@module_pw_max = common dso_local global i32 0, align 4
@module_salt_type = common dso_local global i32 0, align 4
@module_st_hash = common dso_local global i32 0, align 4
@module_st_pass = common dso_local global i32 0, align 4
@module_tmp_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @module_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @MODULE_CONTEXT_SIZE_CURRENT, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 67
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @MODULE_INTERFACE_VERSION_CURRENT, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 66
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @module_attack_exec, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 65
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** @MODULE_DEFAULT, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 64
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** @MODULE_DEFAULT, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 63
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @MODULE_DEFAULT, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 62
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @MODULE_DEFAULT, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 61
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @MODULE_DEFAULT, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 60
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @MODULE_DEFAULT, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 59
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @module_dgst_pos0, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 58
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @module_dgst_pos1, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 57
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @module_dgst_pos2, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 56
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @module_dgst_pos3, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 55
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @module_dgst_size, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 54
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** @MODULE_DEFAULT, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 53
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @MODULE_DEFAULT, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 52
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @MODULE_DEFAULT, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 51
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @MODULE_DEFAULT, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 50
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @MODULE_DEFAULT, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 49
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @MODULE_DEFAULT, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 48
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @MODULE_DEFAULT, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 47
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @MODULE_DEFAULT, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 46
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @MODULE_DEFAULT, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 45
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @MODULE_DEFAULT, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 44
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @module_hash_decode, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 43
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** @MODULE_DEFAULT, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 42
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @MODULE_DEFAULT, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 41
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @module_hash_encode, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 40
  store i32 %84, i32* %86, align 8
  %87 = load i8*, i8** @MODULE_DEFAULT, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 39
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** @MODULE_DEFAULT, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 38
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @module_hash_category, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 37
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @module_hash_name, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 36
  store i32 %96, i32* %98, align 8
  %99 = load i8*, i8** @MODULE_DEFAULT, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 35
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @MODULE_DEFAULT, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 34
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** @MODULE_DEFAULT, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 33
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @MODULE_DEFAULT, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 32
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** @MODULE_DEFAULT, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 31
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @MODULE_DEFAULT, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 30
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** @MODULE_DEFAULT, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 29
  store i8* %117, i8** %119, align 8
  %120 = load i32, i32* @module_jit_build_options, align 4
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 28
  store i32 %120, i32* %122, align 8
  %123 = load i8*, i8** @MODULE_DEFAULT, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 27
  store i8* %123, i8** %125, align 8
  %126 = load i8*, i8** @MODULE_DEFAULT, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 26
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** @MODULE_DEFAULT, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 25
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** @MODULE_DEFAULT, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 24
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** @MODULE_DEFAULT, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 23
  store i8* %135, i8** %137, align 8
  %138 = load i8*, i8** @MODULE_DEFAULT, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 22
  store i8* %138, i8** %140, align 8
  %141 = load i8*, i8** @MODULE_DEFAULT, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 21
  store i8* %141, i8** %143, align 8
  %144 = load i32, i32* @module_kern_type, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 20
  store i32 %144, i32* %146, align 8
  %147 = load i8*, i8** @MODULE_DEFAULT, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 19
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* @module_opti_type, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 18
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @module_opts_type, align 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 17
  store i32 %153, i32* %155, align 8
  %156 = load i8*, i8** @MODULE_DEFAULT, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 16
  store i8* %156, i8** %158, align 8
  %159 = load i8*, i8** @MODULE_DEFAULT, align 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 15
  store i8* %159, i8** %161, align 8
  %162 = load i8*, i8** @MODULE_DEFAULT, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 14
  store i8* %162, i8** %164, align 8
  %165 = load i8*, i8** @MODULE_DEFAULT, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 13
  store i8* %165, i8** %167, align 8
  %168 = load i8*, i8** @MODULE_DEFAULT, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 12
  store i8* %168, i8** %170, align 8
  %171 = load i8*, i8** @MODULE_DEFAULT, align 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 11
  store i8* %171, i8** %173, align 8
  %174 = load i32, i32* @module_pw_max, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 10
  store i32 %174, i32* %176, align 8
  %177 = load i8*, i8** @MODULE_DEFAULT, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 9
  store i8* %177, i8** %179, align 8
  %180 = load i8*, i8** @MODULE_DEFAULT, align 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 8
  store i8* %180, i8** %182, align 8
  %183 = load i8*, i8** @MODULE_DEFAULT, align 8
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 7
  store i8* %183, i8** %185, align 8
  %186 = load i32, i32* @module_salt_type, align 4
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 6
  store i32 %186, i32* %188, align 8
  %189 = load i8*, i8** @MODULE_DEFAULT, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 5
  store i8* %189, i8** %191, align 8
  %192 = load i32, i32* @module_st_hash, align 4
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 4
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* @module_st_pass, align 4
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @module_tmp_size, align 4
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load i8*, i8** @MODULE_DEFAULT, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  store i8* %201, i8** %203, align 8
  %204 = load i8*, i8** @MODULE_DEFAULT, align 8
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  store i8* %204, i8** %206, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
